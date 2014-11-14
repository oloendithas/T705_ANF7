.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;
    }
.end annotation


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field private static final DBG:Z

.field private static final DOD_SKT_APP_SIGNATURE:Ljava/lang/String; = ""

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field public static final EXTRA_VOIP_CALLSTATE:Ljava/lang/String; = "is_voip_callstate"

.field private static final KNIGHT_LOG_FILE_NAME:Ljava/lang/String; = "/data/log/knightBuff.tmp"

.field private static final LTE_ON_CDMA_FILE_PATH:Ljava/lang/String; = "/efs/carrier/CdmaOnly"

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_DC:I = 0x1e

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_IWLAN:I = 0x12

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_TDLTE:I = 0x1f

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field private static final OEM_AUTH_3G_CONTEXT:I = 0x7

.field private static final OEM_FUNCTION_ID_AUTH:I = 0x15

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_IMS:I = 0x5

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field private static final PREFIX_TABLE:[Ljava/lang/String;

.field private static final SHIP_BUILD:Z

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x6

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static final TAG_DM_LOGGING:Ljava/lang/String; = "DmLoggingService"

.field private static final UKNIGHT_DM_CMD_EVENT_SET:I = 0x2

.field private static final UKNIGHT_DM_CMD_LOG_SET:I = 0x1

.field private static final UKNIGHT_DM_CMD_MEM_CHECK:I = 0x5

.field private static final UKNIGHT_DM_CMD_MEM_SET:I = 0x4

.field private static final UKNIGHT_DM_CMD_SAVE_LOG:I = 0x6

.field private static final UKNIGHT_DM_CMD_STATE_CHANGE_SET:I = 0x3

.field private static final UKNIGHT_LGT_APP_SIGNATURE:Ljava/lang/String; = "3082019d30820106a00302010202044f3193c6300d06092a864886f70d010105050030133111300f060355040a0c084c475f55706c7573301e170d3132303230373231313233385a170d3432303133303231313233385a30133111300f060355040a0c084c475f55706c757330819f300d06092a864886f70d010101050003818d0030818902818100872b7051b6c30272b6c200b809a90a4f7fa148bdb554a4b29df536018f256c624c6781006655a30eef98152781353b48da3aa739d8e0bdc2fcee10789438454bce9dcf081a3a8757ecb6f2985bcdec0b83e7ed46dc35ac36e3820442740b0b6c6e05ac17d49502708070e1137914eb26d2e63c9235efbb6d930a353c004228490203010001300d06092a864886f70d0101050500038181004157e820571e50c367497ab98c05375a7d8e40ea67ff3df8858226322faf91e5c12521266402ce9d2e946d25b0833cc7c4b39a2b28cae46e184b16f973a885fd2f607decafcb814ad326739a35d3703c140ac5bdbb18f1598f997e1ae52fcefeee88f3419db99379e63caa981a632d41a23549a0a03e843bf285ad6cdbcaa6f4"

.field private static final UKNIGHT_PACKAGE_NAME:Ljava/lang/String; = "com.lguplus.uknight2"

.field private static final UKNIGHT_TOKEN:I = 0x177c

.field private static final USIMAUTH:I = 0x7

.field public static final VOIPCALL_STATE_IDLE:I = 0x3

.field public static final VOIPCALL_STATE_OFFHOOK:I = 0x5

.field public static final VOIPCALL_STATE_RINGING:I = 0x4

.field private static isRtreFileRead:Z

.field public static isSelecttelecomDF:Z

.field private static mRtreVal:Ljava/lang/String;

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field private static final sKernelCmdLine:Ljava/lang/String;

.field private static final sLteOnCdmaProductType:Ljava/lang/String;

.field private static final sProductTypePattern:Ljava/util/regex/Pattern;

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_98

    move v0, v1

    :goto_c
    sput-boolean v0, Landroid/telephony/TelephonyManager;->DBG:Z

    .line 110
    const-string/jumbo v0, "true"

    const-string/jumbo v3, "ro.product_ship"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/TelephonyManager;->SHIP_BUILD:Z

    .line 117
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/TelephonyManager;->mRtreVal:Ljava/lang/String;

    .line 122
    sput-boolean v2, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    .line 124
    sput-boolean v2, Landroid/telephony/TelephonyManager;->isRtreFileRead:Z

    .line 146
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 268
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 274
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 280
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 644
    invoke-static {}, Landroid/telephony/TelephonyManager;->getProcCmdLine()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    .line 647
    const-string v0, "\\sproduct_type\\s*=\\s*(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    .line 651
    const-string/jumbo v0, "telephony.lteOnCdmaProductType"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    .line 2031
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "010"

    aput-object v3, v0, v2

    const-string v2, "SKT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "KTF"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "STI"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HSP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LGT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/TelephonyManager;->PREFIX_TABLE:[Ljava/lang/String;

    return-void

    :cond_98
    move v0, v2

    .line 109
    goto/16 :goto_c
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1d

    .line 129
    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 134
    :goto_b
    sget-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v1, :cond_1c

    .line 135
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 138
    :cond_1c
    return-void

    .line 131
    :cond_1d
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_b
.end method

.method private ByteToInt([B)I
    .registers 4
    .param p1, "b"    # [B

    .prologue
    .line 2890
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .registers 1

    .prologue
    .line 151
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getDefaultSubscription()I
    .registers 2

    .prologue
    .line 824
    const-string/jumbo v0, "persist.radio.default.sub"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getFirst()Landroid/telephony/TelephonyManager;
    .registers 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method private getITelephonyExt()Lcom/android/internal/telephony/ITelephonyExt;
    .registers 2

    .prologue
    .line 1668
    const-string/jumbo v0, "phoneext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v0

    return-object v0
.end method

.method public static getLteOnCdmaModeStatic()I
    .registers 6

    .prologue
    const/4 v5, -0x1

    .line 667
    const-string v2, ""

    .line 669
    .local v2, "productType":Ljava/lang/String;
    const-string/jumbo v4, "telephony.lteOnCdmaDevice"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 712
    .local v0, "curVal":I
    move v3, v0

    .line 713
    .local v3, "retVal":I
    if-ne v3, v5, :cond_29

    .line 714
    sget-object v4, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    sget-object v5, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 715
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 716
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 717
    sget-object v4, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 718
    const/4 v3, 0x1

    .line 734
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_29
    :goto_29
    return v3

    .line 720
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_29

    .line 723
    :cond_2c
    const/4 v3, 0x0

    goto :goto_29
.end method

.method public static getNetworkClass(I)I
    .registers 2
    .param p0, "networkType"    # I

    .prologue
    .line 1004
    packed-switch p0, :pswitch_data_c

    .line 1030
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1011
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1025
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 1028
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 1004
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_9
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
        :pswitch_7
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .prologue
    .line 1047
    packed-switch p0, :pswitch_data_4c

    .line 1093
    :pswitch_3
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 1049
    :pswitch_6
    const-string v0, "GPRS"

    goto :goto_5

    .line 1051
    :pswitch_9
    const-string v0, "EDGE"

    goto :goto_5

    .line 1053
    :pswitch_c
    const-string v0, "UMTS"

    goto :goto_5

    .line 1055
    :pswitch_f
    const-string v0, "HSDPA"

    goto :goto_5

    .line 1057
    :pswitch_12
    const-string v0, "HSUPA"

    goto :goto_5

    .line 1059
    :pswitch_15
    const-string v0, "HSPA"

    goto :goto_5

    .line 1061
    :pswitch_18
    const-string v0, "CDMA"

    goto :goto_5

    .line 1063
    :pswitch_1b
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_5

    .line 1065
    :pswitch_1e
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_5

    .line 1067
    :pswitch_21
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_5

    .line 1069
    :pswitch_24
    const-string v0, "CDMA - 1xRTT"

    goto :goto_5

    .line 1071
    :pswitch_27
    const-string v0, "KDI"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1072
    const-string v0, "4G"

    goto :goto_5

    .line 1074
    :cond_34
    const-string v0, "LTE"

    goto :goto_5

    .line 1077
    :pswitch_37
    const-string v0, "CDMA - eHRPD"

    goto :goto_5

    .line 1079
    :pswitch_3a
    const-string v0, "iDEN"

    goto :goto_5

    .line 1081
    :pswitch_3d
    const-string v0, "HSPA+"

    goto :goto_5

    .line 1083
    :pswitch_40
    const-string v0, "GSM"

    goto :goto_5

    .line 1085
    :pswitch_43
    const-string v0, "TD-SCDMA"

    goto :goto_5

    .line 1087
    :pswitch_46
    const-string v0, "IWLAN"

    goto :goto_5

    .line 1090
    :pswitch_49
    const-string v0, "DC"

    goto :goto_5

    .line 1047
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_24
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_3a
        :pswitch_21
        :pswitch_27
        :pswitch_37
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
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
        :pswitch_49
    .end packed-switch
.end method

.method public static getPhoneType(I)I
    .registers 4
    .param p0, "networkMode"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 562
    packed-switch p0, :pswitch_data_12

    move v0, v1

    .line 611
    :cond_6
    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    move v0, v1

    .line 585
    goto :goto_6

    .line 605
    :pswitch_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v2

    if-eq v2, v1, :cond_6

    move v0, v1

    .line 608
    goto :goto_6

    .line 562
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static getProcCmdLine()Ljava/lang/String;
    .registers 10

    .prologue
    .line 620
    const-string v1, ""

    .line 621
    .local v1, "cmdline":Ljava/lang/String;
    const/4 v5, 0x0

    .line 623
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/cmdline"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_3d
    .catchall {:try_start_3 .. :try_end_a} :catchall_5e

    .line 624
    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v6, "is":Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_c
    new-array v0, v7, [B

    .line 625
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 626
    .local v3, "count":I
    if-lez v3, :cond_1b

    .line 627
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_6a
    .catchall {:try_start_c .. :try_end_1a} :catchall_67

    .end local v1    # "cmdline":Ljava/lang/String;
    .local v2, "cmdline":Ljava/lang/String;
    move-object v1, v2

    .line 632
    .end local v2    # "cmdline":Ljava/lang/String;
    .restart local v1    # "cmdline":Ljava/lang/String;
    :cond_1b
    if-eqz v6, :cond_6d

    .line 634
    :try_start_1d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_3a

    move-object v5, v6

    .line 639
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :cond_21
    :goto_21
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/cmdline="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-object v1

    .line 635
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_3a
    move-exception v7

    move-object v5, v6

    .line 636
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_21

    .line 629
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    :catch_3d
    move-exception v4

    .line 630
    .local v4, "e":Ljava/io/IOException;
    :goto_3e
    :try_start_3e
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No /proc/cmdline exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_5e

    .line 632
    if-eqz v5, :cond_21

    .line 634
    :try_start_58
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_21

    .line 635
    :catch_5c
    move-exception v7

    goto :goto_21

    .line 632
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_5e
    move-exception v7

    :goto_5f
    if-eqz v5, :cond_64

    .line 634
    :try_start_61
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 636
    :cond_64
    :goto_64
    throw v7

    .line 635
    :catch_65
    move-exception v8

    goto :goto_64

    .line 632
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catchall_67
    move-exception v7

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_5f

    .line 629
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_6a
    move-exception v4

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_3e

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :cond_6d
    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_21
.end method

.method private static getRoamingUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "ua"    # Ljava/lang/String;
    .param p1, "mdn"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 2036
    const-string/jumbo v0, "ril.currentplmn"

    const-string v1, "domestic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "oversea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2045
    :goto_16
    return-object p0

    .line 2040
    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_42

    .line 2041
    const-string v0, "I%c%c%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    .line 2043
    :cond_42
    const-string v0, "I%c%c%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_16
.end method

.method public static getSecondary()Landroid/telephony/TelephonyManager;
    .registers 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getServiceUserAgent()C
    .registers 3

    .prologue
    .line 2059
    const/16 v0, 0x30

    .line 2061
    .local v0, "cNetworkType":C
    invoke-static {}, Landroid/telephony/TelephonyManager;->isWIFIConnected()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2062
    const/16 v0, 0x44

    .line 2094
    :goto_a
    return v0

    .line 2064
    :cond_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 2066
    .local v1, "nNetworkType":I
    packed-switch v1, :pswitch_data_2c

    .line 2091
    :pswitch_16
    const/16 v0, 0x36

    goto :goto_a

    .line 2068
    :pswitch_19
    const/16 v0, 0x42

    .line 2069
    goto :goto_a

    .line 2071
    :pswitch_1c
    const/16 v0, 0x43

    .line 2072
    goto :goto_a

    .line 2074
    :pswitch_1f
    const/16 v0, 0x38

    .line 2075
    goto :goto_a

    .line 2077
    :pswitch_22
    const/16 v0, 0x39

    .line 2078
    goto :goto_a

    .line 2085
    :pswitch_25
    const/16 v0, 0x36

    .line 2086
    goto :goto_a

    .line 2088
    :pswitch_28
    const/16 v0, 0x46

    .line 2089
    goto :goto_a

    .line 2066
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1c
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_1f
        :pswitch_22
        :pswitch_16
        :pswitch_16
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method private getSktImsiM()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2692
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSktImsiM()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2697
    :goto_9
    return-object v1

    .line 2693
    :catch_a
    move-exception v0

    .line 2694
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 2695
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2697
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method private getSktIrm()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2710
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSktIrm()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2715
    :goto_9
    return-object v1

    .line 2711
    :catch_a
    move-exception v0

    .line 2712
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 2713
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2715
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public static getSystemPreferredNetworkMode()I
    .registers 3

    .prologue
    .line 2019
    const-string/jumbo v1, "persist.radio.model_type"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2025
    .local v0, "radio_model_type":Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 834
    const/4 v1, 0x0

    .line 835
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1e

    .line 837
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 838
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_1e

    array-length v3, v2

    if-ge p1, v3, :cond_1e

    aget-object v3, v2, p1

    if-eqz v3, :cond_1e

    .line 839
    aget-object v1, v2, p1

    .line 842
    .end local v2    # "values":[Ljava/lang/String;
    :cond_1e
    if-nez v1, :cond_21

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_20
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_21
    move-object p2, v1

    goto :goto_20
.end method

.method public static getUAField()Ljava/lang/String;
    .registers 31

    .prologue
    .line 2723
    const/16 v22, 0x0

    .line 2724
    .local v22, "numPrefix":Ljava/lang/String;
    const-string v3, ""

    .line 2725
    .local v3, "UserAgent":Ljava/lang/String;
    const-string v13, ""

    .line 2726
    .local v13, "min8":Ljava/lang/String;
    const-string v12, ""

    .line 2727
    .local v12, "mdn":Ljava/lang/String;
    const/16 v26, 0x0

    .line 2729
    .local v26, "sbDeviceInfo":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 2730
    .local v8, "fileReader":Ljava/io/FileReader;
    const/16 v23, 0x0

    .line 2733
    .local v23, "reader":Ljava/io/BufferedReader;
    :try_start_d
    new-instance v16, Ljava/io/File;

    const-string v28, "/system/skt/ua/uafield.dat"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2734
    .local v16, "myFile":Ljava/io/File;
    new-instance v9, Ljava/io/FileReader;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_64
    .catchall {:try_start_d .. :try_end_1f} :catchall_78

    .line 2735
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .local v9, "fileReader":Ljava/io/FileReader;
    :try_start_1f
    new-instance v24, Ljava/io/BufferedReader;

    move-object/from16 v0, v24

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_2ce
    .catchall {:try_start_1f .. :try_end_26} :catchall_2bc

    .line 2736
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .local v24, "reader":Ljava/io/BufferedReader;
    :try_start_26
    new-instance v27, Ljava/lang/StringBuffer;

    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_2d2
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2c0

    .line 2737
    .end local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .local v27, "sbDeviceInfo":Ljava/lang/StringBuffer;
    :try_start_2f
    const-string v28, "TelephonyManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "ua -"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4f} :catch_2d8
    .catchall {:try_start_2f .. :try_end_4f} :catchall_2c6

    .line 2743
    :try_start_4f
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V

    .line 2744
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_55} :catch_5f

    .line 2749
    :goto_55
    if-nez v27, :cond_8a

    .line 2750
    const/16 v28, 0x0

    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    move-object/from16 v26, v27

    .line 2814
    .end local v16    # "myFile":Ljava/io/File;
    .end local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :goto_5e
    return-object v28

    .line 2745
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .end local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "myFile":Ljava/io/File;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :catch_5f
    move-exception v7

    .line 2746
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_55

    .line 2739
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .end local v16    # "myFile":Ljava/io/File;
    .end local v24    # "reader":Ljava/io/BufferedReader;
    .end local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :catch_64
    move-exception v6

    .line 2740
    .local v6, "e":Ljava/lang/Exception;
    :goto_65
    :try_start_65
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_78

    .line 2743
    :try_start_68
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V

    .line 2744
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6e} :catch_73

    .line 2749
    :goto_6e
    if-nez v26, :cond_8f

    .line 2750
    const/16 v28, 0x0

    goto :goto_5e

    .line 2745
    :catch_73
    move-exception v7

    .line 2746
    .restart local v7    # "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6e

    .line 2742
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_78
    move-exception v28

    .line 2743
    :goto_79
    :try_start_79
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V

    .line 2744
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7f} :catch_84

    .line 2749
    :goto_7f
    if-nez v26, :cond_89

    .line 2750
    const/16 v28, 0x0

    goto :goto_5e

    .line 2745
    :catch_84
    move-exception v7

    .line 2746
    .restart local v7    # "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7f

    .line 2750
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_89
    throw v28

    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .end local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "myFile":Ljava/io/File;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :cond_8a
    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    move-object/from16 v26, v27

    .line 2754
    .end local v16    # "myFile":Ljava/io/File;
    .end local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :cond_8f
    const-string/jumbo v28, "oversea"

    const-string/jumbo v29, "ril.currentplmn"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 2755
    .local v10, "is_roaming":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getServiceUserAgent()C

    move-result v19

    .line 2757
    .local v19, "networkType":C
    const/16 v28, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 2759
    const-string v28, "gsm.operator.numeric"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2760
    .local v18, "networkOperator":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 2761
    .local v4, "cell":Landroid/telephony/gsm/GsmCellLocation;
    if-nez v4, :cond_c8

    .line 2762
    const-string v28, "TelephonyManager"

    const-string v29, "No Sim or Flight mode"

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    const/16 v28, 0x0

    goto :goto_5e

    .line 2766
    :cond_c8
    :try_start_c8
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    .line 2767
    .local v5, "cid":I
    const v28, 0xff00

    and-int v28, v28, v5

    shr-int/lit8 v28, v28, 0x8

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 2768
    .local v20, "nodeB":B
    shr-int/lit8 v28, v5, 0x10

    and-int/lit8 v28, v28, 0x1f

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v25, v0

    .line 2769
    .local v25, "rnc":B
    shr-int/lit8 v28, v5, 0x15

    and-int/lit8 v28, v28, 0x7f

    move/from16 v0, v28

    int-to-byte v15, v0

    .line 2771
    .local v15, "msd":B
    if-nez v10, :cond_1cd

    .line 2772
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-direct/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getSktImsiM()Ljava/lang/String;

    move-result-object v12

    .line 2778
    :goto_f2
    sget-object v28, Landroid/telephony/TelephonyManager;->PREFIX_TABLE:[Ljava/lang/String;

    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v29

    add-int/lit8 v29, v29, -0x30

    aget-object v22, v28, v29

    .line 2780
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0xb

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1d7

    .line 2781
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 2791
    :goto_11e
    const/16 v28, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 2792
    .local v14, "mnc":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2793
    .local v11, "mcc":Ljava/lang/String;
    const/16 v17, 0x0

    .line 2795
    .local v17, "networkInfo":Ljava/lang/String;
    const/16 v28, 0x46

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_234

    .line 2796
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ";ECI;"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2801
    :goto_174
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2803
    if-eqz v22, :cond_1ab

    .line 2804
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2806
    :cond_1ab
    invoke-static {v3, v12}, Landroid/telephony/TelephonyManager;->getRoamingUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2807
    const-string v28, "TelephonyManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "getUAField():"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v28, v3

    .line 2814
    goto/16 :goto_5e

    .line 2774
    .end local v11    # "mcc":Ljava/lang/String;
    .end local v14    # "mnc":Ljava/lang/String;
    .end local v17    # "networkInfo":Ljava/lang/String;
    :cond_1cd
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-direct/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getSktIrm()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_f2

    .line 2782
    :cond_1d7
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0xa

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_220

    .line 2783
    if-nez v10, :cond_20c

    .line 2784
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_11e

    .line 2786
    :cond_20c
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_11e

    .line 2788
    :cond_220
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_11e

    .line 2798
    .restart local v11    # "mcc":Ljava/lang/String;
    .restart local v14    # "mnc":Ljava/lang/String;
    .restart local v17    # "networkInfo":Ljava/lang/String;
    :cond_234
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v29, v20, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    rem-int/lit8 v29, v20, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 2799
    .local v21, "nodeBStr":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_297
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_297} :catch_29a

    move-result-object v17

    goto/16 :goto_174

    .line 2808
    .end local v5    # "cid":I
    .end local v11    # "mcc":Ljava/lang/String;
    .end local v14    # "mnc":Ljava/lang/String;
    .end local v15    # "msd":B
    .end local v17    # "networkInfo":Ljava/lang/String;
    .end local v20    # "nodeB":B
    .end local v21    # "nodeBStr":Ljava/lang/String;
    .end local v25    # "rnc":B
    :catch_29a
    move-exception v6

    .line 2809
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v28, "TelephonyManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "No Sim or No MSISDN -"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2811
    const/16 v28, 0x0

    goto/16 :goto_5e

    .line 2742
    .end local v4    # "cell":Landroid/telephony/gsm/GsmCellLocation;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v10    # "is_roaming":Z
    .end local v18    # "networkOperator":Ljava/lang/String;
    .end local v19    # "networkType":C
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "myFile":Ljava/io/File;
    :catchall_2bc
    move-exception v28

    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_79

    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    :catchall_2c0
    move-exception v28

    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_79

    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .end local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :catchall_2c6
    move-exception v28

    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    move-object/from16 v26, v27

    .end local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    goto/16 :goto_79

    .line 2739
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    :catch_2ce
    move-exception v6

    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_65

    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    :catch_2d2
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_65

    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .end local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :catch_2d8
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    move-object/from16 v26, v27

    .end local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    goto/16 :goto_65
.end method

.method private intToByteArray(I)[B
    .registers 7
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x4

    .line 2882
    new-array v0, v4, [B

    .line 2883
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v4, :cond_16

    .line 2884
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    mul-int/lit8 v2, v3, 0x8

    .line 2885
    .local v2, "offset":I
    ushr-int v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 2883
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2887
    .end local v2    # "offset":I
    :cond_16
    return-object v0
.end method

.method public static isSelectTelecomDF()Z
    .registers 1

    .prologue
    .line 2473
    sget-boolean v0, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    return v0
.end method

.method private static isWIFIConnected()Z
    .registers 2

    .prologue
    .line 2049
    const-string v1, "gsm.wifiConnected.active"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2051
    .local v0, "wifiConnected":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2052
    const/4 v1, 0x1

    .line 2054
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private static stringToByte(Ljava/lang/String;)[B
    .registers 5
    .param p0, "byteString"    # Ljava/lang/String;

    .prologue
    .line 2462
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 2464
    .local v0, "byteArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_27

    .line 2465
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2464
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2468
    :cond_27
    return-object v0
.end method

.method private validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2849
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v8, p2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_b} :catch_37

    move-result-object v4

    .line 2857
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_10
    if-ge v2, v3, :cond_73

    aget-object v5, v0, v2

    .line 2858
    .local v5, "signature":Landroid/content/pm/Signature;
    const-string v8, "SKT"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 2859
    const-string v8, ""

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_70

    .line 2860
    sget-boolean v7, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v7, :cond_36

    .line 2861
    const-string v7, "DmLoggingService"

    const-string/jumbo v8, "validateAppSignatureForPackage(), - DOD SIGNATURE !!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "signature":Landroid/content/pm/Signature;
    :cond_36
    :goto_36
    return v6

    .line 2850
    :catch_37
    move-exception v1

    .line 2851
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v6, :cond_55

    .line 2852
    const-string v6, "DmLoggingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "validateAppSignatureForPackage(), exception - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    move v6, v7

    .line 2854
    goto :goto_36

    .line 2866
    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "signature":Landroid/content/pm/Signature;
    :cond_57
    const-string v8, "3082019d30820106a00302010202044f3193c6300d06092a864886f70d010105050030133111300f060355040a0c084c475f55706c7573301e170d3132303230373231313233385a170d3432303133303231313233385a30133111300f060355040a0c084c475f55706c757330819f300d06092a864886f70d010101050003818d0030818902818100872b7051b6c30272b6c200b809a90a4f7fa148bdb554a4b29df536018f256c624c6781006655a30eef98152781353b48da3aa739d8e0bdc2fcee10789438454bce9dcf081a3a8757ecb6f2985bcdec0b83e7ed46dc35ac36e3820442740b0b6c6e05ac17d49502708070e1137914eb26d2e63c9235efbb6d930a353c004228490203010001300d06092a864886f70d0101050500038181004157e820571e50c367497ab98c05375a7d8e40ea67ff3df8858226322faf91e5c12521266402ce9d2e946d25b0833cc7c4b39a2b28cae46e184b16f973a885fd2f607decafcb814ad326739a35d3703c140ac5bdbb18f1598f997e1ae52fcefeee88f3419db99379e63caa981a632d41a23549a0a03e843bf285ad6cdbcaa6f4"

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_70

    .line 2867
    sget-boolean v7, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v7, :cond_36

    .line 2868
    const-string v7, "DmLoggingService"

    const-string/jumbo v8, "validateAppSignatureForPackage(), -KNIGHT SIGNATURE !!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 2857
    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2875
    .end local v5    # "signature":Landroid/content/pm/Signature;
    :cond_73
    sget-boolean v6, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v6, :cond_7f

    .line 2876
    const-string v6, "DmLoggingService"

    const-string/jumbo v8, "validateAppSignatureForPackage(), - Not SIGNATURE ."

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    move v6, v7

    .line 2878
    goto :goto_36
.end method


# virtual methods
.method public calculateAkaResponse([B[B)Ljava/lang/String;
    .registers 6
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    const/4 v1, 0x0

    .line 2532
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->calculateAkaResponse([B[B)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2536
    :goto_9
    return-object v1

    .line 2533
    :catch_a
    move-exception v0

    .line 2534
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 2535
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2536
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;
    .registers 7
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    const/4 v2, 0x0

    .line 2597
    const/4 v0, 0x0

    .line 2600
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_9} :catch_f

    move-result-object v0

    .line 2607
    if-nez v0, :cond_11

    .line 2610
    :goto_c
    return-object v2

    .line 2601
    :catch_d
    move-exception v1

    .line 2602
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_c

    .line 2603
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v1

    .line 2604
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_c

    .line 2610
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_11
    new-instance v2, Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;

    invoke-direct {v2, p0, v0}, Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Bundle;)V

    goto :goto_c
.end method

.method public calculateNafExternalKey([B)[B
    .registers 5
    .param p1, "nafId"    # [B

    .prologue
    const/4 v1, 0x0

    .line 2617
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->calculateNafExternalKey([B)[B
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2621
    :goto_9
    return-object v1

    .line 2618
    :catch_a
    move-exception v0

    .line 2619
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 2620
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2621
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public closeLockChannel(I)Z
    .registers 4
    .param p1, "channel"    # I

    .prologue
    .line 3428
    const/4 v0, 0x0

    .line 3430
    .local v0, "result":Z
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->closeIccLogicalChannel(I)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    .line 3433
    :goto_9
    return v0

    .line 3431
    :catch_a
    move-exception v1

    goto :goto_9
.end method

.method public disableLocationUpdates()V
    .registers 2

    .prologue
    .line 403
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 407
    :goto_7
    return-void

    .line 405
    :catch_8
    move-exception v0

    goto :goto_7

    .line 404
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public enableLocationUpdates()V
    .registers 2

    .prologue
    .line 386
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 390
    :goto_7
    return-void

    .line 388
    :catch_8
    move-exception v0

    goto :goto_7

    .line 387
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public feliCaUimLock(I[ILjava/lang/String;)Ljava/lang/String;
    .registers 26
    .param p1, "changestate"    # I
    .param p2, "cmd"    # [I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 3289
    const/16 v18, 0x0

    .line 3290
    .local v18, "result":Ljava/lang/String;
    const/16 v16, 0x0

    .line 3291
    .local v16, "resAPDU":I
    const/16 v17, -0x1

    .line 3292
    .local v17, "resType":I
    const/4 v10, 0x1

    .line 3293
    .local v10, "RESP_EF_LOCK_LOCK_USER":I
    const/4 v11, 0x2

    .line 3294
    .local v11, "RESP_EF_LOCK_UNLOCK_USER":I
    const/4 v8, 0x0

    .line 3295
    .local v8, "EF_LOCK_OFF":I
    const/4 v9, 0x1

    .line 3296
    .local v9, "EF_LOCK_ON":I
    const/4 v15, 0x0

    .line 3297
    .local v15, "mEFLockUser":I
    const/4 v14, 0x0

    .line 3299
    .local v14, "mEFLockRemote":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    move-object/from16 v19, v18

    .line 3360
    .end local v18    # "result":Ljava/lang/String;
    .local v19, "result":Ljava/lang/String;
    :goto_1a
    return-object v19

    .line 3305
    .end local v19    # "result":Ljava/lang/String;
    .restart local v18    # "result":Ljava/lang/String;
    :cond_1b
    :try_start_1b
    const-string v1, "TelephonyManager"

    const-string v2, "feliCaUimLock(), start"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    const/4 v4, 0x2

    aget v4, p2, v4

    const/4 v5, 0x3

    aget v5, p2, v5

    const/4 v6, 0x4

    aget v6, p2, v6

    move-object/from16 v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ITelephony;->transmitIccAPDU(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3310
    const/4 v1, 0x0

    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v20

    .line 3311
    .local v20, "sw1":I
    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v21

    .line 3313
    .local v21, "sw2":I
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feliCaUimLock(), return : sw1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ sw2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_148

    .line 3315
    move/from16 v17, v10

    .line 3319
    :goto_84
    const/16 v1, 0x90

    move/from16 v0, v20

    if-ne v0, v1, :cond_14f

    if-nez v21, :cond_14f

    .line 3320
    const v16, 0x9000

    .line 3321
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_14c

    .line 3322
    move v15, v9

    .line 3339
    :goto_95
    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_EF_LOCK_UPDATED"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3340
    .local v13, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "responseType"

    move/from16 v0, v17

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3341
    const-string/jumbo v1, "responseApdu"

    move/from16 v0, v16

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3342
    const-string v1, "efLockUser"

    invoke-virtual {v13, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3343
    const-string v1, "efLockRemote"

    invoke-virtual {v13, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3344
    sget-boolean v1, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v1, :cond_137

    .line 3345
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notify   [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APDU res [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserLock [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteLock [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    :cond_137
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3351
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getFeliCaUimLockStatus(I)I
    :try_end_144
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_144} :catch_190
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_144} :catch_19b

    .end local v13    # "intent":Landroid/content/Intent;
    .end local v20    # "sw1":I
    .end local v21    # "sw2":I
    :goto_144
    move-object/from16 v19, v18

    .line 3360
    .end local v18    # "result":Ljava/lang/String;
    .restart local v19    # "result":Ljava/lang/String;
    goto/16 :goto_1a

    .line 3317
    .end local v19    # "result":Ljava/lang/String;
    .restart local v18    # "result":Ljava/lang/String;
    .restart local v20    # "sw1":I
    .restart local v21    # "sw2":I
    :cond_148
    move/from16 v17, v11

    goto/16 :goto_84

    .line 3324
    :cond_14c
    move v15, v8

    goto/16 :goto_95

    .line 3327
    :cond_14f
    const/16 v1, 0x69

    move/from16 v0, v20

    if-ne v0, v1, :cond_15f

    const/16 v1, 0x82

    move/from16 v0, v21

    if-ne v0, v1, :cond_15f

    .line 3328
    const/16 v16, 0x6982

    goto/16 :goto_95

    .line 3329
    :cond_15f
    const/16 v1, 0x69

    move/from16 v0, v20

    if-ne v0, v1, :cond_16f

    const/16 v1, 0x83

    move/from16 v0, v21

    if-ne v0, v1, :cond_16f

    .line 3330
    const/16 v16, 0x6983

    goto/16 :goto_95

    .line 3331
    :cond_16f
    const/16 v1, 0x69

    move/from16 v0, v20

    if-ne v0, v1, :cond_17f

    const/16 v1, 0x85

    move/from16 v0, v21

    if-ne v0, v1, :cond_17f

    .line 3332
    const/16 v16, 0x6985

    goto/16 :goto_95

    .line 3333
    :cond_17f
    const/16 v1, 0x6d

    move/from16 v0, v20

    if-ne v0, v1, :cond_18b

    if-nez v21, :cond_18b

    .line 3334
    const/16 v16, 0x6d00

    goto/16 :goto_95

    .line 3336
    :cond_18b
    const v16, 0xffff

    goto/16 :goto_95

    .line 3352
    .end local v20    # "sw1":I
    .end local v21    # "sw2":I
    :catch_190
    move-exception v12

    .line 3354
    .local v12, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "feliCaUimLock(), RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    const/16 v18, 0x0

    .line 3359
    goto :goto_144

    .line 3356
    .end local v12    # "ex":Landroid/os/RemoteException;
    :catch_19b
    move-exception v12

    .line 3357
    .local v12, "ex":Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManager"

    const-string v2, "feliCaUimLock(), NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    const/16 v18, 0x0

    goto :goto_144
.end method

.method public getAllCellInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1838
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo()Ljava/util/List;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1842
    :goto_9
    return-object v1

    .line 1839
    :catch_a
    move-exception v0

    .line 1840
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1841
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1842
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getBtid()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2554
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getBtid()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2558
    :goto_9
    return-object v1

    .line 2555
    :catch_a
    move-exception v0

    .line 2556
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 2557
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2558
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCallState()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1560
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1566
    :goto_9
    return v1

    .line 1561
    :catch_a
    move-exception v0

    .line 1563
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1564
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1566
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCdmaEriIconIndex()I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 1727
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1732
    :goto_9
    return v1

    .line 1728
    :catch_a
    move-exception v0

    .line 1730
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1731
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1732
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCdmaEriIconMode()I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 1745
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1750
    :goto_9
    return v1

    .line 1746
    :catch_a
    move-exception v0

    .line 1748
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1749
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1750
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1761
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1766
    :goto_9
    return-object v1

    .line 1762
    :catch_a
    move-exception v0

    .line 1764
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1765
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1766
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 362
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 363
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    move-object v1, v3

    .line 371
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_10
    :goto_10
    return-object v1

    .line 364
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_11
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 365
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_20

    move-result v4

    if-eqz v4, :cond_10

    move-object v1, v3

    .line 366
    goto :goto_10

    .line 368
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    :catch_1d
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    move-object v1, v3

    .line 369
    goto :goto_10

    .line 370
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_20
    move-exception v2

    .local v2, "ex":Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 371
    goto :goto_10
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1419
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1424
    :goto_9
    return-object v1

    .line 1420
    :catch_a
    move-exception v0

    .line 1421
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1422
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1424
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCurrentPhoneType()I
    .registers 4

    .prologue
    .line 459
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 460
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_b

    .line 461
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 477
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 464
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_16
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_1c

    move-result v2

    goto :goto_a

    .line 466
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_10
    move-exception v0

    .line 469
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a

    .line 470
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_16
    move-exception v0

    .line 473
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a

    .line 475
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1c
    move-exception v0

    .line 477
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a
.end method

.method public getDataActivity()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1596
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1602
    :goto_9
    return v1

    .line 1597
    :catch_a
    move-exception v0

    .line 1599
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1600
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1602
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDataNetworkType()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 929
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 930
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_b

    .line 931
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkType()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_e

    move-result v2

    .line 941
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    :goto_b
    return v2

    .line 936
    :catch_c
    move-exception v0

    .line 938
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_b

    .line 939
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_e
    move-exception v0

    .line 941
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_b
.end method

.method public getDataRoamingEnabled()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2213
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataRoamingEnabled()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 2217
    :goto_9
    return v1

    .line 2214
    :catch_a
    move-exception v0

    .line 2215
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 2216
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2217
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDataServiceState()I
    .registers 3

    .prologue
    .line 2249
    const/4 v0, 0x0

    .line 2251
    .local v0, "state":I
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataServiceState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    .line 2255
    :goto_9
    return v0

    .line 2253
    :catch_a
    move-exception v1

    goto :goto_9

    .line 2252
    :catch_c
    move-exception v1

    goto :goto_9
.end method

.method public getDataState()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1641
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1646
    :goto_9
    return v1

    .line 1642
    :catch_a
    move-exception v0

    .line 1644
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1645
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1646
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDataStateDs(I)I
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 1653
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 337
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 341
    :goto_9
    return-object v1

    .line 338
    :catch_a
    move-exception v0

    .line 339
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 340
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 341
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 315
    const-string v2, "SPR-CDMA"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 317
    const-string v1, "gsm.version.baseband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    :goto_11
    return-object v1

    .line 320
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_19} :catch_1d

    move-result-object v1

    goto :goto_11

    .line 321
    :catch_1b
    move-exception v0

    .line 322
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_11

    .line 323
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1d
    move-exception v0

    .line 324
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_11
.end method

.method public getFeliCaUimLockStatus(I)I
    .registers 7
    .param p1, "option"    # I

    .prologue
    .line 3369
    const/4 v1, 0x0

    .line 3371
    .local v1, "result":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    move v2, v1

    .line 3386
    :goto_e
    return v2

    .line 3375
    :cond_f
    :try_start_f
    const-string v2, "TelephonyManager"

    const-string v3, "getFeliCaUimLockStatus(), start"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getFeliCaUimLockStatus(I)I

    move-result v1

    .line 3377
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFeliCaUimLockStatus(), result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_36} :catch_38
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_36} :catch_42

    move v2, v1

    .line 3386
    goto :goto_e

    .line 3379
    :catch_38
    move-exception v0

    .line 3380
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "getFeliCaUimLockStatus(), RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    const/4 v2, -0x1

    goto :goto_e

    .line 3382
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_42
    move-exception v0

    .line 3383
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string v3, "getFeliCaUimLockStatus(), NullPointerException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    const/4 v2, -0x2

    goto :goto_e
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1324
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1329
    :goto_9
    return-object v1

    .line 1325
    :catch_a
    move-exception v0

    .line 1326
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1327
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1329
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method protected getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .prologue
    .line 1663
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public getImeiInCDMAGSMPhone()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3276
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getImeiInCDMAGSMPhone()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 3280
    :goto_9
    return-object v1

    .line 3277
    :catch_a
    move-exception v0

    .line 3278
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 3279
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 3280
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getIsimAid()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2576
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimAid()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2580
    :goto_9
    return-object v1

    .line 2577
    :catch_a
    move-exception v0

    .line 2578
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 2579
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2580
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getIsimDomain()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1487
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1492
    :goto_9
    return-object v1

    .line 1488
    :catch_a
    move-exception v0

    .line 1489
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1490
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1492
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getIsimImpi()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1471
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1476
    :goto_9
    return-object v1

    .line 1472
    :catch_a
    move-exception v0

    .line 1473
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1474
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1476
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1504
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1509
    :goto_9
    return-object v1

    .line 1505
    :catch_a
    move-exception v0

    .line 1506
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1507
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1509
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2672
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscf()[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2677
    :goto_9
    return-object v1

    .line 2673
    :catch_a
    move-exception v0

    .line 2674
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 2675
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2677
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getKeyLifetime()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2565
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getKeyLifetime()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2569
    :goto_9
    return-object v1

    .line 2566
    :catch_a
    move-exception v0

    .line 2567
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 2568
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2569
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getLGUplusKnightInfo()Ljava/util/HashMap;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 2409
    const-string v6, "LGT"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_101

    .line 2414
    const/4 v3, 0x0

    .line 2415
    .local v3, "mLGUplusKnightInfo":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2417
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_11
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyExt()Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephonyExt;->getMobileQualityInformation()Ljava/lang/String;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_103

    move-result-object v3

    .line 2424
    const/4 v0, 0x0

    .line 2426
    .local v0, "Values":[Ljava/lang/String;
    :try_start_1a
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_11e

    move-result-object v0

    .line 2431
    const-string v5, "getLGUplusKnightInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    const-string v5, "IMSI"

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2434
    const-string v5, "GUTI"

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2435
    const-string v5, "IP"

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2436
    const-string v5, "Antenna Bar"

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2437
    const-string v5, "NV Mode"

    const/4 v6, 0x4

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2438
    const-string v5, "Service State"

    const/4 v6, 0x5

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2439
    const-string v5, "LAC"

    const/4 v6, 0x6

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2440
    const-string v5, "TAC"

    const/4 v6, 0x7

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2441
    const-string v5, "Band"

    const/16 v6, 0x8

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2442
    const-string v5, "Bandwidth"

    const/16 v6, 0x9

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2443
    const-string v5, "PCI"

    const/16 v6, 0xa

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2444
    const-string v5, "TX"

    const/16 v6, 0xb

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2445
    const-string v5, "RSSI"

    const/16 v6, 0xc

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2446
    const-string v5, "RSRP"

    const/16 v6, 0xd

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2447
    const-string v5, "RSRQ"

    const/16 v6, 0xe

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2448
    const-string v5, "SINR"

    const/16 v6, 0xf

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2449
    const-string v5, "EARFCN downlink"

    const/16 v6, 0x10

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2450
    const-string v5, "EARFCN uplink"

    const/16 v6, 0x11

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2451
    const-string v5, "EMM cause"

    const/16 v6, 0x12

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2452
    const-string v5, "EMM state"

    const/16 v6, 0x13

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2453
    const-string v5, "EMM connection state"

    const/16 v6, 0x14

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2454
    const-string v5, "Default Bearer count"

    const/16 v6, 0x15

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    const-string v5, "Dedicated Bearer count"

    const/16 v6, 0x16

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2457
    .end local v0    # "Values":[Ljava/lang/String;
    .end local v3    # "mLGUplusKnightInfo":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_100
    return-object v4

    :cond_101
    move-object v4, v5

    .line 2411
    goto :goto_100

    .line 2418
    .restart local v3    # "mLGUplusKnightInfo":Ljava/lang/String;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_103
    move-exception v2

    .line 2419
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v6, "TelephonyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMobileQualityInformation() - Exception occured : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 2420
    goto :goto_100

    .line 2427
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "Values":[Ljava/lang/String;
    :catch_11e
    move-exception v1

    .line 2428
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "TelephonyManager"

    const-string v7, "getLGUplusKnightInfo() - Values is not valid"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 2429
    goto :goto_100
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1363
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1368
    :goto_9
    return-object v1

    .line 1364
    :catch_a
    move-exception v0

    .line 1365
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1366
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1368
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getLine1Number()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1342
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1348
    :cond_9
    :goto_9
    return-object v1

    .line 1343
    :catch_a
    move-exception v0

    .line 1344
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1345
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1346
    .local v0, "ex":Ljava/lang/NullPointerException;
    sget-boolean v2, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public getLine1NumberType(I)Ljava/lang/String;
    .registers 5
    .param p1, "SimType"    # I

    .prologue
    const/4 v1, 0x0

    .line 3460
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberType(I)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 3465
    :goto_9
    return-object v1

    .line 3461
    :catch_a
    move-exception v0

    .line 3462
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 3463
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 3465
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getLteOnCdmaMode()I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 1281
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaMode()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1287
    :goto_9
    return v1

    .line 1282
    :catch_a
    move-exception v0

    .line 1284
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1285
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1287
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getMmsUAProfUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1930
    const/4 v0, 0x0

    .line 1933
    .local v0, "sUaProfUrl":Ljava/lang/String;
    const-string v1, "XAR"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1938
    const-string v0, "http://wap.samsungmobile.com/uaprof/SM-T705.xml"

    .line 1974
    :goto_d
    if-eqz v0, :cond_1e

    .line 1979
    .end local v0    # "sUaProfUrl":Ljava/lang/String;
    :goto_f
    return-object v0

    .line 1935
    .restart local v0    # "sUaProfUrl":Ljava/lang/String;
    :cond_10
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mms_x_wap_profile_url"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 1978
    :cond_1e
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_24

    const/4 v0, 0x0

    goto :goto_f

    .line 1979
    :cond_24
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public getMmsUserAgent()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1870
    const/4 v0, 0x0

    .line 1873
    .local v0, "sUserAgent":Ljava/lang/String;
    const-string v1, "XAR"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "ACG"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1879
    const-string v0, "SAMSUNG-ANDROID-MMS/SM-T705"

    .line 1917
    :goto_17
    if-eqz v0, :cond_28

    .line 1922
    .end local v0    # "sUserAgent":Ljava/lang/String;
    :goto_19
    return-object v0

    .line 1876
    .restart local v0    # "sUserAgent":Ljava/lang/String;
    :cond_1a
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mms_user_agent"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 1921
    :cond_28
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2e

    const/4 v0, 0x0

    goto :goto_19

    .line 1922
    :cond_2e
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method public getMobileQualityInformation()Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 2264
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1383
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdn()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1388
    :goto_9
    return-object v1

    .line 1384
    :catch_a
    move-exception v0

    .line 1385
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1386
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1388
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 422
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_e} :catch_12

    move-result-object v1

    .line 426
    :goto_f
    return-object v1

    .line 423
    :catch_10
    move-exception v0

    .line 424
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_f

    .line 425
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 426
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_f
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .registers 4

    .prologue
    .line 814
    const-string v0, "gsm.operator.iso-country"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .registers 4

    .prologue
    .line 777
    const-string v0, "gsm.operator.numeric"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 751
    const-string v1, "SPR-CDMA"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 753
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_21

    .line 754
    const-string/jumbo v1, "ro.cdma.home.operator.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "homeOperatorAlpha":Ljava/lang/String;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_21

    .line 762
    .end local v0    # "homeOperatorAlpha":Ljava/lang/String;
    :goto_20
    return-object v0

    :cond_21
    const-string v1, "gsm.operator.alpha"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method public getNetworkType()I
    .registers 2

    .prologue
    .line 899
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    return v0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1042
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "product":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_9

    .line 530
    :cond_8
    :goto_8
    return v1

    .line 526
    :cond_9
    const-string/jumbo v2, "ro.build.product"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    const-string v2, "kwifi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 530
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    goto :goto_8
.end method

.method public getPhoneTypeForIMS()I
    .registers 4

    .prologue
    .line 489
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 490
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_b

    .line 491
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeForIMS()I

    move-result v2

    .line 506
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 494
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_16
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_1c

    move-result v2

    goto :goto_a

    .line 496
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_10
    move-exception v0

    .line 499
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a

    .line 500
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_16
    move-exception v0

    .line 503
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a

    .line 504
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1c
    move-exception v0

    .line 506
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a
.end method

.method protected getPhoneTypeFromNetworkType()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 546
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 547
    .local v0, "mode":I
    if-ne v0, v2, :cond_c

    .line 548
    const/4 v1, 0x0

    .line 549
    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    goto :goto_b
.end method

.method protected getPhoneTypeFromProperty()I
    .registers 4

    .prologue
    .line 535
    const-string v1, "gsm.current.phone-type"

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 538
    .local v0, "type":I
    return v0
.end method

.method public getPsismsc()[B
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2635
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getPsismsc()[B
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2639
    :goto_9
    return-object v1

    .line 2636
    :catch_a
    move-exception v0

    .line 2637
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 2638
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2639
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getRand()[B
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2543
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getRand()[B
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2547
    :goto_9
    return-object v1

    .line 2544
    :catch_a
    move-exception v0

    .line 2545
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 2546
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2547
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getSdnAvailable()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1147
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSdnAvailable()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1153
    :goto_9
    return v1

    .line 1148
    :catch_a
    move-exception v0

    .line 1150
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1151
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1153
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getServiceState()I
    .registers 3

    .prologue
    .line 2236
    const/4 v0, 0x0

    .line 2238
    .local v0, "state":I
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    .line 2242
    :goto_9
    return v0

    .line 2240
    :catch_a
    move-exception v1

    goto :goto_9

    .line 2239
    :catch_c
    move-exception v1

    goto :goto_9
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1246
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1216
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1229
    const-string v0, "VZW"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1231
    const-string v0, "Verizon"

    .line 1235
    :goto_c
    return-object v0

    :cond_d
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1260
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1265
    :goto_9
    return-object v1

    .line 1261
    :catch_a
    move-exception v0

    .line 1262
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1263
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1265
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getSimState()I
    .registers 5

    .prologue
    .line 1171
    const-string v1, "gsm.sim.state"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1173
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1174
    const/4 v1, 0x1

    .line 1192
    :goto_15
    return v1

    .line 1176
    :cond_16
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1177
    const/4 v1, 0x2

    goto :goto_15

    .line 1179
    :cond_20
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1180
    const/4 v1, 0x3

    goto :goto_15

    .line 1182
    :cond_2a
    const-string v1, "PERSO_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1183
    const/4 v1, 0x4

    goto :goto_15

    .line 1185
    :cond_34
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1186
    const/4 v1, 0x5

    goto :goto_15

    .line 1188
    :cond_3e
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1189
    const/4 v1, 0x6

    goto :goto_15

    .line 1192
    :cond_48
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getSimStateDs(I)I
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 1201
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public getSponImsi()[Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2199
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSponImsi()[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2204
    :goto_9
    return-object v1

    .line 2200
    :catch_a
    move-exception v0

    .line 2201
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 2202
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2204
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1306
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1311
    :goto_9
    return-object v1

    .line 1307
    :catch_a
    move-exception v0

    .line 1308
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1309
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1311
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getSubscriberIdType(I)Ljava/lang/String;
    .registers 5
    .param p1, "SimType"    # I

    .prologue
    const/4 v1, 0x0

    .line 3481
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdType(I)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 3486
    :goto_9
    return-object v1

    .line 3482
    :catch_a
    move-exception v0

    .line 3483
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 3484
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 3486
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method protected getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 2

    .prologue
    .line 1520
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1455
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1460
    :goto_9
    return-object v1

    .line 1456
    :catch_a
    move-exception v0

    .line 1457
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1458
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1460
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1400
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 1405
    :goto_9
    return-object v1

    .line 1401
    :catch_a
    move-exception v0

    .line 1402
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1403
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1405
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getVoiceMessageCount()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1437
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1442
    :goto_9
    return v1

    .line 1438
    :catch_a
    move-exception v0

    .line 1439
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1440
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1442
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getVoiceNetworkType()I
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 952
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 953
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_c

    .line 954
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkType()I

    move-result v2

    .line 967
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_b
    return v2

    .line 957
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_c
    const-string v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVoiceNetworkType() - telephony :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_24} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_24} :catch_3f

    goto :goto_b

    .line 960
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_25
    move-exception v0

    .line 962
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVoiceNetworkType() - RemoteException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 964
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_3f
    move-exception v0

    .line 966
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVoiceNetworkType() - NullPointerException :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public hasCall(Ljava/lang/String;)Z
    .registers 5
    .param p1, "callType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2006
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->hasCall(Ljava/lang/String;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 2010
    :goto_9
    return v1

    .line 2007
    :catch_a
    move-exception v0

    .line 2008
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 2009
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2010
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public hasIccCard()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1128
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 1134
    :goto_9
    return v1

    .line 1129
    :catch_a
    move-exception v0

    .line 1131
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 1132
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 1134
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public hasIsim()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2507
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->hasIsim()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 2511
    :goto_9
    return v1

    .line 2508
    :catch_a
    move-exception v0

    .line 2509
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 2510
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2511
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public isGbaSupported()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2489
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->isGbaSupported()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 2493
    :goto_9
    return v1

    .line 2490
    :catch_a
    move-exception v0

    .line 2491
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 2492
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2493
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public isNetworkRoaming()Z
    .registers 5

    .prologue
    .line 791
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v2

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoamingDs(I)Z
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public isSmoveripSupported()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2654
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->isSmoveripSupported()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 2658
    :goto_9
    return v1

    .line 2655
    :catch_a
    move-exception v0

    .line 2656
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 2657
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2658
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public isSmsCapable()Z
    .registers 3

    .prologue
    .line 1805
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 1810
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_5
.end method

.method public isVoiceCapable()Z
    .registers 3

    .prologue
    .line 1787
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 1788
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_5
.end method

.method public isdialingEmergencycall()Z
    .registers 2

    .prologue
    .line 3499
    const/4 v0, 0x0

    .line 3506
    .local v0, "isEmergency":Z
    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 8
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 1702
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1704
    .local v1, "pkgForDebug":Ljava/lang/String;
    :goto_a
    const/4 v2, 0x1

    :try_start_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1705
    .local v0, "notifyNow":Ljava/lang/Boolean;
    sget-object v2, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v1, v3, p2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_1a} :catch_1e

    .line 1711
    .end local v0    # "notifyNow":Ljava/lang/Boolean;
    :goto_1a
    return-void

    .line 1702
    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_1b
    const-string v1, "<unknown>"

    goto :goto_a

    .line 1708
    .restart local v1    # "pkgForDebug":Ljava/lang/String;
    :catch_1e
    move-exception v2

    goto :goto_1a

    .line 1706
    :catch_20
    move-exception v2

    goto :goto_1a
.end method

.method public listenDs(ILandroid/telephony/PhoneStateListener;I)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p3, "events"    # I

    .prologue
    .line 1716
    invoke-virtual {p0, p2, p3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1717
    return-void
.end method

.method public oem_ssa_alarm_event([B)[B
    .registers 9
    .param p1, "setCmd"    # [B

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 3221
    new-array v2, v6, [B

    .line 3223
    .local v2, "retByte":[B
    if-nez p1, :cond_10

    .line 3224
    const/4 v1, -0x1

    .line 3231
    .local v1, "eventCode":I
    :goto_7
    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->uknight_state_change_set(I)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 3232
    aput-byte v5, v2, v5

    .line 3236
    :goto_f
    return-object v2

    .line 3226
    .end local v1    # "eventCode":I
    :cond_10
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 3227
    .local v0, "buff":[B
    array-length v3, p1

    rsub-int/lit8 v3, v3, 0x4

    array-length v4, p1

    invoke-static {p1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3228
    aget-byte v3, v0, v5

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aget-byte v4, v0, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v1, v3, v4

    .restart local v1    # "eventCode":I
    goto :goto_7

    .line 3234
    .end local v0    # "buff":[B
    :cond_35
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public oem_ssa_check_mem()[I
    .registers 2

    .prologue
    .line 3258
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->uknight_mem_check()[I

    move-result-object v0

    return-object v0
.end method

.method public oem_ssa_get_data()[B
    .registers 2

    .prologue
    .line 3244
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->uknight_get_data()[B

    move-result-object v0

    return-object v0
.end method

.method public oem_ssa_set_event([B)[B
    .registers 3
    .param p1, "setCmd"    # [B

    .prologue
    .line 3212
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->uknight_event_set([B)[B

    move-result-object v0

    return-object v0
.end method

.method public oem_ssa_set_log([B)[B
    .registers 3
    .param p1, "setCmd"    # [B

    .prologue
    .line 3205
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->uknight_log_set([B)[B

    move-result-object v0

    return-object v0
.end method

.method public oem_ssa_set_mem(I)Z
    .registers 3
    .param p1, "percent"    # I

    .prologue
    .line 3251
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->uknight_mem_set(I)Z

    move-result v0

    return v0
.end method

.method public openLockChannel(Ljava/lang/String;)I
    .registers 5
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    .line 3417
    const/4 v0, 0x0

    .line 3419
    .local v0, "channel":I
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->openIccLogicalChannel(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    .line 3423
    :goto_9
    return v0

    .line 3420
    :catch_a
    move-exception v1

    .line 3421
    .local v1, "ex":Landroid/os/RemoteException;
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public requestAuthForMediaShare(Ljava/lang/String;)V
    .registers 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 2176
    sget-boolean v1, Landroid/telephony/TelephonyManager;->SHIP_BUILD:Z

    if-eqz v1, :cond_13

    .line 2177
    const-string v1, "ISIM"

    const-string v2, "ISIM >>> Inside TelephonyManager->requestAuthForMediaShare"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    :goto_b
    :try_start_b
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestAuthForMediaShare(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_2c

    .line 2191
    :goto_12
    return-void

    .line 2179
    :cond_13
    const-string v1, "ISIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISIM >>> Inside TelephonyManager->requestAuthForMediaShare data as string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2186
    :catch_2c
    move-exception v0

    .line 2188
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12
.end method

.method public requestIsimAuthentication(Ljava/lang/String;)V
    .registers 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 2156
    sget-boolean v1, Landroid/telephony/TelephonyManager;->SHIP_BUILD:Z

    if-eqz v1, :cond_13

    .line 2157
    const-string v1, "ISIM"

    const-string v2, "ISIM >>> Inside TelephonyManager->requestIsimAuthentication"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :goto_b
    :try_start_b
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestIsimAuthentication(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_2c

    .line 2171
    :goto_12
    return-void

    .line 2159
    :cond_13
    const-string v1, "ISIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISIM >>> Inside TelephonyManager->requestIsimAuthentication data as string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2166
    :catch_2c
    move-exception v0

    .line 2168
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12
.end method

.method public requestUsimAuthentication(Ljava/lang/String;)V
    .registers 12
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 2100
    sget-boolean v7, Landroid/telephony/TelephonyManager;->SHIP_BUILD:Z

    if-eqz v7, :cond_40

    .line 2101
    const-string v7, "USIM"

    const-string v8, "USIM >>> Inside TelephonyManager->requestUsimAuthentication"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :goto_b
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->stringToByte(Ljava/lang/String;)[B

    move-result-object v1

    .line 2108
    .local v1, "byteData":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2109
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2112
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_19
    array-length v7, v1

    add-int/lit8 v4, v7, 0x6

    .line 2113
    .local v4, "fileSize":I
    const/16 v7, 0x15

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2114
    const/4 v7, 0x7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2115
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2116
    const/4 v7, 0x0

    aget-byte v7, v1, v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2117
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2118
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_33
    array-length v7, v1

    div-int/lit8 v7, v7, 0x2

    if-ge v5, v7, :cond_59

    .line 2119
    aget-byte v7, v1, v5

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_3d} :catch_71

    .line 2118
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 2103
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "byteData":[B
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v4    # "fileSize":I
    .end local v5    # "i":I
    :cond_40
    const-string v7, "USIM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USIM >>> Inside TelephonyManager->requestUsimAuthentication data as string "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2121
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteData":[B
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "fileSize":I
    .restart local v5    # "i":I
    :cond_59
    const/16 v7, 0x11

    :try_start_5b
    aget-byte v7, v1, v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2122
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2123
    const/16 v5, 0x12

    :goto_66
    array-length v7, v1

    if-ge v5, v7, :cond_7a

    .line 2124
    aget-byte v7, v1, v5

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_6e} :catch_71

    .line 2123
    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    .line 2126
    .end local v4    # "fileSize":I
    .end local v5    # "i":I
    :catch_71
    move-exception v3

    .line 2127
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "USIM"

    const-string v8, "IOException - requestUsimAuthentication"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    .end local v3    # "e":Ljava/io/IOException;
    :cond_79
    :goto_79
    return-void

    .line 2132
    .restart local v4    # "fileSize":I
    .restart local v5    # "i":I
    :cond_7a
    const/16 v7, 0x22

    :try_start_7c
    new-array v6, v7, [B

    .line 2133
    .local v6, "response":[B
    const-string/jumbo v7, "phoneext"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x7

    invoke-interface {v7, v8, v6, v9}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I

    .line 2135
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V

    .line 2136
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_97} :catch_9a

    .line 2137
    const/4 v2, 0x0

    .line 2138
    const/4 v0, 0x0

    goto :goto_79

    .line 2140
    .end local v6    # "response":[B
    :catch_9a
    move-exception v3

    .line 2141
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "USIM"

    const-string v8, "Exception - connect"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    if-eqz v2, :cond_a7

    :try_start_a4
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V

    .line 2144
    :cond_a7
    if-eqz v0, :cond_79

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_ac} :catch_ad

    goto :goto_79

    .line 2145
    :catch_ad
    move-exception v7

    goto :goto_79
.end method

.method public setCellInfoListRate(I)V
    .registers 3
    .param p1, "rateInMillis"    # I

    .prologue
    .line 1860
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1864
    :goto_7
    return-void

    .line 1862
    :catch_8
    move-exception v0

    goto :goto_7

    .line 1861
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public setDataRoamingEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 2226
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2230
    :goto_7
    return-void

    .line 2228
    :catch_8
    move-exception v0

    goto :goto_7

    .line 2227
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;

    .prologue
    .line 2587
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2593
    :goto_7
    return-void

    .line 2590
    :catch_8
    move-exception v0

    goto :goto_7

    .line 2588
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public setPcoValue(I)V
    .registers 3
    .param p1, "newPco"    # I

    .prologue
    .line 1991
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->setPcoValue(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1995
    :goto_7
    return-void

    .line 1993
    :catch_8
    move-exception v0

    goto :goto_7

    .line 1992
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public setUimRemoteLockStatus(I)I
    .registers 7
    .param p1, "option"    # I

    .prologue
    .line 3394
    const/4 v1, 0x0

    .line 3396
    .local v1, "result":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    move v2, v1

    .line 3411
    :goto_e
    return v2

    .line 3400
    :cond_f
    :try_start_f
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setUimRemoteLockStatus(), start"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setUimRemoteLockStatus(I)I

    move-result v1

    .line 3402
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUimRemoteLockStatus(), result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_38} :catch_3a
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_38} :catch_45

    move v2, v1

    .line 3411
    goto :goto_e

    .line 3404
    :catch_3a
    move-exception v0

    .line 3405
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setUimRemoteLockStatus(), RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    const/4 v2, -0x1

    goto :goto_e

    .line 3407
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_45
    move-exception v0

    .line 3408
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setUimRemoteLockStatus(), NullPointerException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    const/4 v2, -0x2

    goto :goto_e
.end method

.method public startMobileQualityInformation()V
    .registers 3

    .prologue
    .line 2386
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyExt()Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->startMobileQualityInformation()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2389
    :goto_7
    return-void

    .line 2388
    :catch_8
    move-exception v0

    .line 2389
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7
.end method

.method public stopMobileQualityInformation()V
    .registers 3

    .prologue
    .line 2398
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephonyExt()Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->stopMobileQualityInformation()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2401
    :goto_7
    return-void

    .line 2400
    :catch_8
    move-exception v0

    .line 2401
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7
.end method

.method public transmitLockChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 17
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 3438
    const/4 v8, 0x0

    .line 3440
    .local v8, "response":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result-object v8

    .line 3443
    :goto_11
    return-object v8

    .line 3441
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public uknight_event_set([B)[B
    .registers 3
    .param p1, "setCmd"    # [B

    .prologue
    .line 2949
    const/4 v0, 0x0

    return-object v0
.end method

.method public uknight_get_data()[B
    .registers 2

    .prologue
    .line 3097
    const/4 v0, 0x0

    return-object v0
.end method

.method public uknight_log_set([B)[B
    .registers 3
    .param p1, "setCmd"    # [B

    .prologue
    .line 2899
    const/4 v0, 0x0

    return-object v0
.end method

.method public uknight_mem_check()[I
    .registers 2

    .prologue
    .line 3171
    const/4 v0, 0x0

    return-object v0
.end method

.method public uknight_mem_set(I)Z
    .registers 3
    .param p1, "percent"    # I

    .prologue
    .line 3047
    const/4 v0, 0x0

    return v0
.end method

.method public uknight_state_change_set(I)Z
    .registers 3
    .param p1, "eventCode"    # I

    .prologue
    .line 2999
    const/4 v0, 0x0

    return v0
.end method
