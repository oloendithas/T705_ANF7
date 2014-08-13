.class public Lcom/sec/android/app/dialertab/calllog/CallLogUtil;
.super Ljava/lang/Object;
.source "CallLogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;
    }
.end annotation


# static fields
.field private static final ACTION_CONFIG_DIALOG:Ljava/lang/String; = "com.sec.android.app.firewall.action.CONFIG_DIALOG"

.field public static final AUTOREJECT_CHECKED:Ljava/lang/String; = "reject_checked"

.field public static final AUTOREJECT_NUMBER:Ljava/lang/String; = "reject_number"

.field public static final AUTO_DIAL:Ljava/lang/String; = "LGT_RAD_TEMP"

.field public static final AUTO_DIAL_DISABLE:I = 0x2

.field public static final AUTO_DIAL_ENABLE:I = 0x1

.field private static final AUTO_DIAL_ON:I = 0xb

.field private static final AUTO_DIAL_SETTING:Ljava/lang/String; = "auto_dial_enable"

.field static BIN_DEFAULT_DIR:Ljava/lang/String; = null

.field static BIN_ORIG_DEFAULT_DIR:Ljava/lang/String; = null

.field public static final BLACK_CALL_NUM:I = 0x2

.field public static final BLACK_MESSAGE_NUM:I = 0x1

.field public static final CALL_FROM_SMS:Ljava/lang/String; = "SMS_CALL"

.field public static final CALL_TYPE:Ljava/lang/String; = "LGT_RAD_TEMP"

.field public static final COUNTRY_CODE:Ljava/lang/String; = "COUNTRY_CODE"

.field private static final DBG:Z

.field public static final EXTRA_CALL_DIRECTCALL_DIRECTION:Ljava/lang/String; = "android.phone.extra.CALL_DIRECTCALL_DIRECTION"

.field private static KnownCityList:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field static LANGUAGE_CHINA:I = 0x0

.field static LANGUAGE_ENGLISH:I = 0x0

.field static LANGUAGE_KOREA:I = 0x0

.field public static final LOGSLIST_PREF_NAME:Ljava/lang/String; = "logslist_pref"

.field public static final MIN_MATCH_CHINA:I = 0xb

.field private static final ONEDAYMILLIS:J = 0x5265c00L

.field private static final PREFERRED_SIM_SIM1:I = 0x2

.field private static final PREFERRED_SIM_SIM2:I = 0x3

.field public static final PREF_KEY_REJECT_POPUP:Ljava/lang/String; = "reject_popup"

.field private static final PROJECTION_REJECT_NUMBER:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CallLogUtil"

.field public static final URI_CALLSETTING_REJECT:Ljava/lang/String; = "content://com.android.phone.callsettings/reject_num"

.field static VERSION_DEFAULT_DIR:Ljava/lang/String; = null

.field static VERSION_ORIG_DEFAULT_DIR:Ljava/lang/String; = null

.field public static final WHITE_CALL_NUM:I = 0x4

.field public static final WHITE_MESSAGE_NUM:I = 0x3

.field public static airViewMode:I = 0x0

.field private static assisDialing:Ljava/lang/reflect/Method; = null

.field public static blockNumberFullErrorDlg:Landroid/app/AlertDialog; = null

.field public static blockNumberSettingDlg:Landroid/app/AlertDialog; = null

.field public static blockStateDlg:Landroid/app/AlertDialog; = null

.field static headerSize:I = 0x0

.field public static final mBlcokNumberResult:[Z

.field public static final mBlcoknumbersetting:[Z

.field public static final mCallType:I = 0x2

.field public static mDateFormat:Ljava/lang/String;

.field public static final mOriginalBlcokNumberSetting:[Z

.field static mobileSize:I

.field static ois:Ljava/io/RandomAccessFile;

.field static provinceSize:I

.field public static settingInfoPreview:Z

.field public static settingInfoPreviewbyPen:Z

.field private static systemTime:Landroid/text/format/Time;

.field static telSize:I

.field static titleSeekCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "reject_number"

    aput-object v3, v0, v2

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->PROJECTION_REJECT_NUMBER:[Ljava/lang/String;

    .line 121
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    .line 123
    const-string v0, "MM-dd-yyyy"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mDateFormat:Ljava/lang/String;

    .line 125
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->systemTime:Landroid/text/format/Time;

    .line 136
    new-array v0, v4, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mOriginalBlcokNumberSetting:[Z

    .line 137
    new-array v0, v4, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    .line 138
    new-array v0, v4, [Z

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    .line 158
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->airViewMode:I

    .line 159
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->settingInfoPreview:Z

    .line 160
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->settingInfoPreviewbyPen:Z

    .line 1696
    const/16 v0, 0x83

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    .line 1697
    const/16 v0, 0x60

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    .line 1698
    const/16 v0, 0x81

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mobileSize:I

    .line 1699
    sput v5, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->headerSize:I

    .line 1700
    const/16 v0, 0xc

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->titleSeekCount:I

    .line 1701
    sput v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_CHINA:I

    .line 1702
    sput v5, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_KOREA:I

    .line 1703
    sput v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_ENGLISH:I

    .line 1704
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    .line 1706
    const-string v0, "/system/etc/HomeLocationDB.bin"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

    .line 1707
    const-string v0, "/system/etc/HomeLocationVersion.bin"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->VERSION_ORIG_DEFAULT_DIR:Ljava/lang/String;

    .line 1708
    const-string v0, "/data/data/com.android.phone/HomeLocationDB.bin"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->BIN_DEFAULT_DIR:Ljava/lang/String;

    .line 1709
    const-string v0, "/data/data/com.android.phone/HomeLocationVersion.bin"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->VERSION_DEFAULT_DIR:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 121
    goto :goto_0

    .line 136
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 137
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 138
    :array_2
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1804
    return-void
.end method

.method public static AddToContact(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2216
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2217
    const-string v2, "sip"

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2222
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    const/4 v0, 0x0

    .line 2224
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "dcm_jcontacts_package_name"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2225
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.jcontacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2229
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2230
    return-void

    .line 2219
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v2, "tel"

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 2227
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public static AddToContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2269
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2270
    const-string v4, "sip"

    invoke-static {v4, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2275
    .local v3, "uri":Landroid/net/Uri;
    :goto_0
    const/4 v1, 0x0

    .line 2277
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "dcm_jcontacts_package_name"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2278
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v4, "com.android.jcontacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2282
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_1
    if-eqz p2, :cond_0

    .line 2284
    const/4 v4, 0x0

    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2285
    .local v0, "firstName":Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2286
    .local v2, "lastName":Ljava/lang/String;
    const-string v4, "name"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2287
    const-string v4, "data2"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2288
    const-string v4, "data3"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2291
    .end local v0    # "firstName":Ljava/lang/String;
    .end local v2    # "lastName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2292
    return-void

    .line 2272
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v4, "tel"

    invoke-static {v4, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .restart local v3    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 2280
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v4, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public static AddToContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "firstName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .param p5, "city_id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2234
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2235
    const-string v2, "sip"

    invoke-static {v2, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2240
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    const/4 v0, 0x0

    .line 2242
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "dcm_jcontacts_package_name"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2243
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.jcontacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2247
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_1
    if-eqz p2, :cond_4

    if-nez p3, :cond_4

    if-nez p4, :cond_4

    .line 2248
    const-string v2, "name"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2258
    :cond_0
    :goto_2
    if-eqz p5, :cond_1

    .line 2259
    const-string v2, "cnam"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2260
    const-string v2, "postal"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2261
    const-string v2, "postal_type"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2264
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2265
    return-void

    .line 2237
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v2, "tel"

    invoke-static {v2, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 2245
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 2250
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2251
    const-string v2, "name"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2253
    :cond_5
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2254
    const-string v2, "data3"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public static addToKnownCity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 1814
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 1815
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;

    .line 1817
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getKnownCity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1819
    const-string v1, "CallLogUtil"

    const-string v2, "addToKnownCity : already is stored."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :goto_0
    return-void

    .line 1823
    :cond_1
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogUtil$1;)V

    .line 1824
    .local v0, "info":Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;
    iput-object p0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;->number:Ljava/lang/String;

    .line 1825
    if-nez p1, :cond_2

    .line 1826
    const-string v1, ""

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;->city:Ljava/lang/String;

    .line 1830
    :goto_1
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1828
    :cond_2
    iput-object p1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;->city:Ljava/lang/String;

    goto :goto_1
.end method

.method public static blockContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 429
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 432
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 436
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 437
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 438
    .local v8, "nRejectDBsize":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 440
    const/4 v7, 0x0

    .line 441
    .local v7, "max_rejectDB_size":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_maxcount"

    const/16 v3, 0x64

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 444
    if-lt v8, v7, :cond_1

    .line 448
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    const v0, 0x7f0e0301

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    move v0, v11

    .line 474
    .end local v7    # "max_rejectDB_size":I
    .end local v8    # "nRejectDBsize":I
    :goto_0
    return v0

    .line 453
    .restart local v7    # "max_rejectDB_size":I
    .restart local v8    # "nRejectDBsize":I
    :cond_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 455
    .local v10, "values":Landroid/content/ContentValues;
    if-nez p1, :cond_2

    move v0, v11

    .line 456
    goto :goto_0

    .line 459
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 460
    .local v9, "rejectNum":Ljava/lang/String;
    const-string v0, "reject_number"

    invoke-virtual {v10, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v0, "reject_checked"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    const-string v0, "reject_match"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 469
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 470
    const v0, 0x7f0e02fe

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .end local v7    # "max_rejectDB_size":I
    .end local v8    # "nRejectDBsize":I
    .end local v9    # "rejectNum":Ljava/lang/String;
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_3
    move v0, v12

    .line 474
    goto :goto_0
.end method

.method public static blockContact(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2918
    .local p1, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->PROJECTION_REJECT_NUMBER:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2922
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 2923
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 2924
    .local v9, "nRejectDBsize":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2926
    const/4 v8, 0x0

    .line 2927
    .local v8, "max_rejectDB_size":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_maxcount"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 2930
    if-lt v9, v8, :cond_0

    .line 2934
    const v0, 0x7f0e0301

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2935
    const/4 v0, 0x0

    .line 2965
    .end local v8    # "max_rejectDB_size":I
    .end local v9    # "nRejectDBsize":I
    :goto_0
    return v0

    .line 2937
    .restart local v8    # "max_rejectDB_size":I
    .restart local v9    # "nRejectDBsize":I
    :cond_0
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2939
    .local v11, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2940
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2943
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 2944
    add-int v0, v9, v7

    if-lt v0, v8, :cond_5

    .line 2945
    const v0, 0x7f0e0301

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2962
    :cond_3
    const v0, 0x7f0e02fe

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2965
    .end local v7    # "i":I
    .end local v8    # "max_rejectDB_size":I
    .end local v9    # "nRejectDBsize":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 2949
    .restart local v7    # "i":I
    .restart local v8    # "max_rejectDB_size":I
    .restart local v9    # "nRejectDBsize":I
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_5
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2950
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2951
    .local v10, "rejectNum":Ljava/lang/String;
    const-string v0, "reject_number"

    invoke-virtual {v11, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    const-string v0, "reject_checked"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2955
    const-string v0, "reject_match"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2957
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2943
    .end local v10    # "rejectNum":Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public static blockMessageContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 721
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, "rejectNum":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.intent.action.SPAM_FILTER_INSERT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "filter_type"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 725
    const-string v2, "filter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    const-string v2, "enable"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 727
    const-string v2, "criteria"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 729
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 730
    const-string v2, "CallLogUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blockMessageContact sendBroadcast intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return v5
.end method

.method public static blockVideoCallContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 579
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 582
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 586
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 587
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 588
    .local v8, "nRejectDBsize":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 590
    const/4 v7, 0x0

    .line 591
    .local v7, "max_rejectDB_size":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_maxcount"

    const/16 v3, 0x64

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 594
    if-lt v8, v7, :cond_1

    .line 598
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    const v0, 0x7f0e0301

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    move v0, v11

    .line 619
    .end local v7    # "max_rejectDB_size":I
    .end local v8    # "nRejectDBsize":I
    :goto_0
    return v0

    .line 603
    .restart local v7    # "max_rejectDB_size":I
    .restart local v8    # "nRejectDBsize":I
    :cond_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 604
    .local v10, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 605
    .local v9, "rejectNum":Ljava/lang/String;
    const-string v0, "reject_number"

    invoke-virtual {v10, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v0, "reject_checked"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 609
    const-string v0, "reject_match"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 611
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 614
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 615
    const v0, 0x7f0e02fe

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .end local v7    # "max_rejectDB_size":I
    .end local v8    # "nRejectDBsize":I
    .end local v9    # "rejectNum":Ljava/lang/String;
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_2
    move v0, v12

    .line 619
    goto :goto_0
.end method

.method public static checkDualSim()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 2521
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2522
    .local v0, "SimState1":I
    const-string v2, "gsm.sim.currentcardstatus2"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2526
    .local v1, "SimState2":I
    const-string v2, "CallLogUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDualSim - SimState1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SimState2 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    if-ne v0, v5, :cond_0

    if-ne v1, v5, :cond_0

    .line 2530
    const-string v2, "CallLogUtil"

    const-string v3, "checkDualSim - both of sim cards are enabled"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    const/4 v2, 0x1

    .line 2535
    :goto_0
    return v2

    .line 2534
    :cond_0
    const-string v2, "CallLogUtil"

    const-string v3, "checkDualSim - no sim card or only 1 sim card are inerted"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkMessageblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1509
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 1511
    .local v8, "where":Ljava/lang/StringBuffer;
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1512
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 1513
    const-string v0, "filter"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1514
    const-string v0, " LIKE "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1515
    const-string v0, "\'%"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1516
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1522
    :goto_0
    const-string v0, "\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1523
    const-string v0, " AND filter_type="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1524
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1525
    const-string v0, " AND enable="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1526
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1527
    const-string v0, " AND criteria="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1528
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1529
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "filter"

    aput-object v0, v2, v9

    .line 1533
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/spam-filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1537
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 1538
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1539
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1589
    :goto_1
    return v0

    .line 1518
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    const-string v0, "filter="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1519
    const-string v0, "\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1520
    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1542
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1545
    :cond_2
    const-string v0, "filter"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1547
    .local v7, "rejectNumber":Ljava/lang/String;
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v0, :cond_3

    .line 1548
    const-string v0, "CallLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMessageblocked : rejectNumber"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "number"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_3
    invoke-static {v7, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1551
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1552
    goto :goto_1

    .line 1554
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1556
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1557
    goto :goto_1

    .line 1560
    .end local v7    # "rejectNumber":Ljava/lang/String;
    :cond_5
    const-string v0, "CallLogUtil"

    const-string v1, "checkVideoCallblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 1562
    goto :goto_1

    .line 1564
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_6
    const-string v0, "filter="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1565
    const-string v0, "\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1566
    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1567
    const-string v0, "\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1568
    const-string v0, " AND filter_type="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1569
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1570
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "filter"

    aput-object v0, v2, v9

    .line 1574
    .restart local v2    # "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/spam-filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1578
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 1579
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1580
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1581
    goto/16 :goto_1

    .line 1583
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1584
    goto/16 :goto_1

    .line 1587
    :cond_8
    const-string v0, "CallLogUtil"

    const-string v1, "checkMessageblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 1589
    goto/16 :goto_1
.end method

.method public static checkMessageunblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1595
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 1597
    .local v8, "where":Ljava/lang/StringBuffer;
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1598
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 1599
    const-string v0, "filter"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1600
    const-string v0, " LIKE "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1601
    const-string v0, "\'%"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1602
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1608
    :goto_0
    const-string v0, "\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1609
    const-string v0, " AND filter_type="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1610
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1611
    const-string v0, " AND enable="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1612
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1613
    const-string v0, " AND criteria="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1614
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1615
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "filter"

    aput-object v0, v2, v9

    .line 1619
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/spam-filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1623
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 1624
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1625
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1676
    :goto_1
    return v0

    .line 1604
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    const-string v0, "filter="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1605
    const-string v0, "\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1606
    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1628
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1631
    :cond_2
    const-string v0, "filter"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1633
    .local v7, "rejectNumber":Ljava/lang/String;
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v0, :cond_3

    .line 1634
    const-string v0, "CallLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMessageunblocked : rejectNumber"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "number"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_3
    invoke-static {v7, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1637
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1638
    goto :goto_1

    .line 1640
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1642
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1643
    goto :goto_1

    .line 1646
    .end local v7    # "rejectNumber":Ljava/lang/String;
    :cond_5
    const-string v0, "CallLogUtil"

    const-string v1, "checkMessageunblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 1648
    goto :goto_1

    .line 1650
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_6
    const-string v0, "filter="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1651
    const-string v0, "\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1652
    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1653
    const-string v0, "\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1654
    const-string v0, " AND filter_type="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1655
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1656
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "filter"

    aput-object v0, v2, v9

    .line 1660
    .restart local v2    # "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/spam-filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1664
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 1665
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1666
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1667
    goto/16 :goto_1

    .line 1669
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1670
    goto/16 :goto_1

    .line 1673
    :cond_8
    const-string v0, "CallLogUtil"

    const-string v1, "checkMessageunblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 1676
    goto/16 :goto_1
.end method

.method public static checkNoSimMode()Z
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x2

    .line 2540
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2541
    .local v0, "SimState1":I
    const-string v2, "gsm.sim.currentcardstatus2"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2543
    .local v1, "SimState2":I
    const-string v2, "CallLogUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkNoSimMode - SimState1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SimState2 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    if-eqz v0, :cond_0

    if-eq v0, v5, :cond_0

    if-ne v0, v6, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    if-eq v1, v5, :cond_1

    if-ne v0, v6, :cond_2

    .line 2548
    :cond_1
    const/4 v2, 0x1

    .line 2550
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 990
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 993
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    const/4 v2, 0x1

    .line 999
    :goto_0
    return v2

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "CallLogUtil"

    const-string v3, "Error NameNotFoundException"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkVideoCallblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1322
    const/4 v7, 0x0

    .line 1323
    .local v7, "nReject_match":I
    const/4 v9, 0x1

    .line 1324
    .local v9, "reject_checked":I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1326
    .local v10, "where":Ljava/lang/StringBuffer;
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 1328
    const-string v0, "reject_number"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1329
    const-string v0, " LIKE "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1330
    const-string v0, "\'%"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1331
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1337
    :goto_0
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1338
    const-string v0, " AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1339
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1340
    const-string v0, " AND reject_checked="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1341
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1342
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 1346
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1350
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 1351
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1352
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1402
    :goto_1
    return v0

    .line 1333
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    const-string v0, "reject_number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1334
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1335
    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1355
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1358
    :cond_2
    const-string v0, "reject_number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1360
    .local v8, "rejectNumber":Ljava/lang/String;
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v0, :cond_3

    .line 1361
    const-string v0, "CallLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVideoCallblocked : rejectNumber"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "number"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_3
    invoke-static {v8, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1364
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 1365
    goto :goto_1

    .line 1367
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1369
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1370
    goto :goto_1

    .line 1373
    .end local v8    # "rejectNumber":Ljava/lang/String;
    :cond_5
    const-string v0, "CallLogUtil"

    const-string v1, "checkVideoCallblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 1375
    goto :goto_1

    .line 1377
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_6
    const-string v0, "reject_number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1378
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1379
    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1380
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1381
    const-string v0, " AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1382
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1383
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 1387
    .restart local v2    # "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1391
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 1392
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1393
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1394
    goto/16 :goto_1

    .line 1396
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 1397
    goto/16 :goto_1

    .line 1400
    :cond_8
    const-string v0, "CallLogUtil"

    const-string v1, "checkVideoCallblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 1402
    goto/16 :goto_1
.end method

.method public static checkVideoCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1408
    const/4 v7, 0x0

    .line 1409
    .local v7, "nReject_match":I
    const/4 v9, 0x0

    .line 1410
    .local v9, "reject_checked":I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1412
    .local v10, "where":Ljava/lang/StringBuffer;
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1413
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 1414
    const-string v0, "reject_number"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1415
    const-string v0, " LIKE "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1416
    const-string v0, "\'%"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1417
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1423
    :goto_0
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1424
    const-string v0, " AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1425
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1426
    const-string v0, " AND reject_checked="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1427
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1428
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 1432
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1436
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 1437
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1438
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1488
    :goto_1
    return v0

    .line 1419
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    const-string v0, "reject_number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1420
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1421
    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1441
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1444
    :cond_2
    const-string v0, "reject_number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1446
    .local v8, "rejectNumber":Ljava/lang/String;
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v0, :cond_3

    .line 1447
    const-string v0, "CallLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVideoCallblocked : rejectNumber"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "number"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_3
    invoke-static {v8, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1450
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 1451
    goto :goto_1

    .line 1453
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1455
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1456
    goto :goto_1

    .line 1459
    .end local v8    # "rejectNumber":Ljava/lang/String;
    :cond_5
    const-string v0, "CallLogUtil"

    const-string v1, "checkVideoCallblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 1461
    goto :goto_1

    .line 1463
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_6
    const-string v0, "reject_number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1464
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1465
    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1466
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1467
    const-string v0, " AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1468
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1469
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 1473
    .restart local v2    # "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1477
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 1478
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1479
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1480
    goto/16 :goto_1

    .line 1482
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 1483
    goto/16 :goto_1

    .line 1486
    :cond_8
    const-string v0, "CallLogUtil"

    const-string v1, "checkVideoCallblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 1488
    goto/16 :goto_1
.end method

.method public static checkVoiceCallblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1135
    const/4 v7, 0x0

    .line 1136
    .local v7, "nReject_match":I
    const/4 v9, 0x1

    .line 1137
    .local v9, "reject_checked":I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1139
    .local v10, "where":Ljava/lang/StringBuffer;
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 1141
    const-string v0, "reject_number"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1142
    const-string v0, " LIKE "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1143
    const-string v0, "\'%"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1144
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1150
    :goto_0
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1151
    const-string v0, " AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1152
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1153
    const-string v0, " AND reject_checked="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1154
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1155
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 1159
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1163
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 1164
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1165
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1215
    :goto_1
    return v0

    .line 1146
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    const-string v0, "reject_number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1147
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1148
    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1168
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1171
    :cond_2
    const-string v0, "reject_number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1173
    .local v8, "rejectNumber":Ljava/lang/String;
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v0, :cond_3

    .line 1174
    const-string v0, "CallLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVoiceCallblocked : rejectNumber"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "number"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_3
    invoke-static {v8, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 1178
    goto :goto_1

    .line 1180
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1183
    goto :goto_1

    .line 1186
    .end local v8    # "rejectNumber":Ljava/lang/String;
    :cond_5
    const-string v0, "CallLogUtil"

    const-string v1, "checkVoiceCallblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 1188
    goto :goto_1

    .line 1190
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_6
    const-string v0, "reject_number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1191
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1192
    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1193
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1194
    const-string v0, " AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1195
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1196
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 1200
    .restart local v2    # "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1204
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 1205
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1206
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1207
    goto/16 :goto_1

    .line 1209
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 1210
    goto/16 :goto_1

    .line 1213
    :cond_8
    const-string v0, "CallLogUtil"

    const-string v1, "checkVoiceCallblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 1215
    goto/16 :goto_1
.end method

.method public static checkVoiceCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1221
    const/4 v7, 0x0

    .line 1222
    .local v7, "nReject_match":I
    const/4 v9, 0x0

    .line 1223
    .local v9, "reject_checked":I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1225
    .local v10, "where":Ljava/lang/StringBuffer;
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1226
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 1227
    const-string v0, "reject_number"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1228
    const-string v0, " LIKE "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1229
    const-string v0, "\'%"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1230
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1236
    :goto_0
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1237
    const-string v0, " AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1238
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1239
    const-string v0, " AND reject_checked="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1240
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1241
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 1245
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1249
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 1250
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1251
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1301
    :goto_1
    return v0

    .line 1232
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    const-string v0, "reject_number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1233
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1234
    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1254
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1257
    :cond_2
    const-string v0, "reject_number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1259
    .local v8, "rejectNumber":Ljava/lang/String;
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v0, :cond_3

    .line 1260
    const-string v0, "CallLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVoiceCallunblocked : rejectNumber"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "number"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_3
    invoke-static {v8, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 1264
    goto :goto_1

    .line 1266
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1268
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1269
    goto :goto_1

    .line 1272
    .end local v8    # "rejectNumber":Ljava/lang/String;
    :cond_5
    const-string v0, "CallLogUtil"

    const-string v1, "checkVoiceunCallblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 1274
    goto :goto_1

    .line 1276
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_6
    const-string v0, "reject_number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1277
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1278
    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1279
    const-string v0, "\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1280
    const-string v0, " AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1281
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1282
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v11

    .line 1286
    .restart local v2    # "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1290
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 1291
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1292
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 1293
    goto/16 :goto_1

    .line 1295
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 1296
    goto/16 :goto_1

    .line 1299
    :cond_8
    const-string v0, "CallLogUtil"

    const-string v1, "checkVoiceCallunblocked - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 1301
    goto/16 :goto_1
.end method

.method public static closeLocationBinFile()V
    .locals 2

    .prologue
    .line 1852
    const-string v0, "CallLogUtil"

    const-string v1, "closeLocationFile"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :try_start_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 1857
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1858
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    .line 1861
    :cond_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1863
    const-string v0, "CallLogUtil"

    const-string v1, "clear cached city list"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1865
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1871
    :cond_1
    :goto_0
    return-void

    .line 1867
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static configBlacklistNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2429
    const-string v0, "blacklist"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->configNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    return-void
.end method

.method private static configNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/lang/String;

    .prologue
    .line 2437
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2438
    const-string v1, "CallLogUtil"

    const-string v2, "configNum:  empty"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    :goto_0
    return-void

    .line 2441
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2442
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2443
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2444
    const-string v1, "list"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2445
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static configWhitelistNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2433
    const-string v0, "whitelist"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->configNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    return-void
.end method

.method public static createContact(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 374
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 376
    .local v0, "insertIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    const-string v1, "sip"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 382
    return-void

    .line 379
    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static createContactWithCnap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2190
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2191
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "phone"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2192
    const-string v3, "phone_type"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2195
    if-eqz p2, :cond_0

    .line 2198
    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 2199
    move-object v0, p2

    .line 2200
    .local v0, "firstName":Ljava/lang/String;
    const-string v2, " "

    .line 2205
    .local v2, "lastName":Ljava/lang/String;
    :goto_0
    const-string v3, "name"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2206
    const-string v3, "data2"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2207
    const-string v3, "data3"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2210
    .end local v0    # "firstName":Ljava/lang/String;
    .end local v2    # "lastName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2211
    return-void

    .line 2202
    :cond_1
    const/4 v3, 0x0

    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2203
    .restart local v0    # "firstName":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "lastName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static createContactWithCnap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "firstName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .param p5, "city_id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2163
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2164
    const-string v1, "phone_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2167
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 2168
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2179
    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    .line 2180
    const-string v1, "cnam"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2181
    const-string v1, "postal"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2182
    const-string v1, "postal_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2185
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2186
    return-void

    .line 2171
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2172
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2174
    :cond_3
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2175
    const-string v1, "data3"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static editCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 361
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 362
    return-void
.end method

.method public static editContact(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactID"    # I
    .param p2, "strNumber"    # Ljava/lang/String;

    .prologue
    .line 417
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, "bufId":Ljava/lang/StringBuffer;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 421
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.PHONE_NUMBER"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 425
    return-void
.end method

.method public static existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 2449
    const/4 v9, 0x0

    .line 2451
    .local v9, "result":Z
    const-string v6, "com.sec.android.app.firewall"

    .line 2452
    .local v6, "AUTHORITY":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2454
    .local v7, "AUTOREJECT_TABLE":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 2469
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.sec.android.app.firewall/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2471
    .local v1, "AUTOREJECT_CONTENT_URI":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "numbers=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2473
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 2474
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2475
    const/4 v9, 0x1

    .line 2477
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2482
    :goto_1
    const-string v0, "CallLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "existInVIPModeList - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    return v9

    .line 2456
    .end local v1    # "AUTOREJECT_CONTENT_URI":Landroid/net/Uri;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :pswitch_0
    const-string v7, "black_msg_num"

    .line 2457
    goto :goto_0

    .line 2459
    :pswitch_1
    const-string v7, "black_call_num"

    .line 2460
    goto :goto_0

    .line 2462
    :pswitch_2
    const-string v7, "white_msg_num"

    .line 2463
    goto :goto_0

    .line 2465
    :pswitch_3
    const-string v7, "white_call_num"

    goto :goto_0

    .line 2479
    .restart local v1    # "AUTOREJECT_CONTENT_URI":Landroid/net/Uri;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-string v0, "CallLogUtil"

    const-string v2, "existInVIPModeList - cursor is null"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # J

    .prologue
    const v12, 0x7f0e02ad

    const v8, 0x7f0e02ac

    const/16 v11, 0x30

    const/16 v10, 0xa

    const/16 v9, 0x2f

    .line 2312
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 2313
    .local v3, "mCalendar":Ljava/util/Calendar;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2314
    .local v0, "dateBuffer":Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 2316
    .local v2, "locale":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2317
    const-string v7, "ar"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "fa"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ur"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2319
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2385
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 2321
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2323
    :cond_2
    const-wide/32 v7, 0x5265c00

    add-long/2addr v7, p1

    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2324
    const-string v7, "ar"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "fa"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "ur"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2326
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2328
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2331
    :cond_5
    const-string v7, "ar"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "fa"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2332
    :cond_6
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v7, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mDateFormat:Ljava/lang/String;

    const/16 v8, 0x2d

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2333
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2337
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_7
    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2338
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2339
    .local v6, "year":I
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v4, v7, 0x1

    .line 2340
    .local v4, "month":I
    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2342
    .local v1, "day":I
    const-string v7, "MM-dd-yyyy"

    sget-object v8, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2343
    if-ge v4, v10, :cond_8

    .line 2344
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2346
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2347
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2348
    if-ge v1, v10, :cond_9

    .line 2349
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2351
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2352
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2353
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 2354
    :cond_a
    const-string v7, "dd-MM-yyyy"

    sget-object v8, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2356
    if-ge v1, v10, :cond_b

    .line 2357
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2359
    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2360
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2362
    if-ge v4, v10, :cond_c

    .line 2363
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2365
    :cond_c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2366
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2367
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 2370
    :cond_d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2371
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2372
    if-ge v4, v10, :cond_e

    .line 2373
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2375
    :cond_e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2376
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2377
    if-ge v1, v10, :cond_f

    .line 2378
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2380
    :cond_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public static formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J
    .param p3, "flags"    # I
    .param p4, "timezone"    # Ljava/lang/String;

    .prologue
    .line 2393
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v1, "f":Ljava/util/Formatter;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    .line 2394
    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1046
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1047
    const-string v2, ""

    .line 1059
    :goto_0
    return-object v2

    .line 1050
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1051
    .local v0, "sEditable":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    .line 1053
    .local v1, "sFormattingType":I
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1054
    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1056
    const-string v2, "disable_format_number"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1057
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1059
    :cond_1
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static getBufferUnicodeString([BII)Ljava/lang/String;
    .locals 8
    .param p0, "buffer"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 1764
    const/4 v4, 0x0

    .line 1765
    .local v4, "isStringEnd":Z
    const/4 v1, 0x0

    .line 1766
    .local v1, "count":I
    const/4 v3, 0x0

    .line 1767
    .local v3, "i":I
    const/16 v7, 0x80

    new-array v0, v7, [B

    .line 1769
    .local v0, "buffer128":[B
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_0

    .line 1771
    add-int v7, p1, v3

    aget-byte v7, p0, v7

    aput-byte v7, v0, v3

    .line 1769
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1773
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_1

    .line 1775
    rem-int/lit8 v7, v3, 0x2

    if-nez v7, :cond_2

    add-int/lit8 v7, p2, -0x1

    if-ge v3, v7, :cond_2

    aget-byte v7, v0, v3

    if-nez v7, :cond_2

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v0, v7

    if-nez v7, :cond_2

    const/4 v4, 0x1

    .line 1777
    :goto_2
    if-eqz v4, :cond_3

    .line 1785
    :cond_1
    new-array v5, v1, [B

    .line 1786
    .local v5, "newBuffer":[B
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_4

    .line 1788
    aget-byte v7, v0, v3

    aput-byte v7, v5, v3

    .line 1786
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1775
    .end local v5    # "newBuffer":[B
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 1782
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 1773
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1794
    .restart local v5    # "newBuffer":[B
    :cond_4
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-16LE"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1800
    :goto_4
    return-object v6

    .line 1796
    :catch_0
    move-exception v2

    .line 1798
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1800
    const-string v6, ""

    goto :goto_4
.end method

.method public static getCountryCodeLocator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "iddValue"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 2738
    move-object v5, p1

    .line 2739
    .local v5, "search_number":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2740
    .local v1, "mCountryName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2741
    .local v0, "mCheckNumber":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2742
    .local v4, "mSearchNumberIdd":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2744
    .local v3, "mSearchLength":I
    if-nez p2, :cond_0

    .line 2745
    const-string p2, ""

    .line 2747
    :cond_0
    if-eqz p1, :cond_3

    .line 2748
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2749
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 2751
    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-lt v3, v8, :cond_5

    .line 2753
    const/4 v6, 0x3

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2754
    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->startCheckCountryCodes(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2755
    if-nez v1, :cond_1

    .line 2756
    const/4 v6, 0x4

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2757
    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->startCheckCountryCodes(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2759
    :cond_1
    if-nez v1, :cond_2

    .line 2760
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2761
    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->startCheckCountryCodes(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2763
    :cond_2
    if-nez v1, :cond_3

    .line 2764
    const/4 v6, 0x2

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2765
    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->startCheckCountryCodes(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2791
    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 2792
    const-string v1, ""

    .line 2794
    :cond_4
    return-object v1

    .line 2768
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2769
    .local v2, "mIddLength":I
    if-lez v2, :cond_3

    add-int/lit8 v6, v2, 0x4

    if-lt v3, v6, :cond_3

    .line 2770
    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2772
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2773
    add-int/lit8 v6, v2, 0x2

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2774
    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->startCheckCountryCodes(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2775
    if-nez v1, :cond_6

    .line 2776
    add-int/lit8 v6, v2, 0x3

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2777
    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->startCheckCountryCodes(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2779
    :cond_6
    if-nez v1, :cond_7

    .line 2780
    add-int/lit8 v6, v2, 0x4

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2781
    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->startCheckCountryCodes(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2783
    :cond_7
    if-nez v1, :cond_3

    .line 2784
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2785
    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->startCheckCountryCodes(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCurrentNetwork()I
    .locals 6

    .prologue
    .line 2678
    const/4 v2, 0x0

    .line 2679
    .local v2, "simId":I
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2680
    .local v1, "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 2682
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2687
    :cond_0
    :goto_0
    return v2

    .line 2683
    :catch_0
    move-exception v0

    .line 2684
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "CallLogUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentNetwork"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getKnownCity(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1835
    if-eqz p0, :cond_0

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 1847
    :cond_0
    :goto_0
    return-object v2

    .line 1838
    :cond_1
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->KnownCityList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 1839
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1840
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;

    .line 1841
    .local v0, "info":Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;
    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1843
    const-string v2, "CallLogUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKnownCity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;->city:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$LocationInfo;->city:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getNumberProvinceAndCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 56
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "incomingCallNum"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1875
    const-string v52, "CallLogUtil"

    const-string v53, " getNumberProvinceAndCity for"

    invoke-static/range {v52 .. v53}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    const-wide/16 v45, 0x0

    .line 1877
    .local v45, "startmarker":J
    const-string v48, ""

    .line 1878
    .local v48, "strProvince":Ljava/lang/String;
    const-string v47, ""

    .line 1879
    .local v47, "strCity":Ljava/lang/String;
    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v14, v0, [B

    .line 1880
    .local v14, "buffer2":[B
    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 1881
    .local v16, "buffer4":[B
    const/16 v52, 0x20

    move/from16 v0, v52

    new-array v15, v0, [B

    .line 1882
    .local v15, "buffer32":[B
    const/16 v42, 0x0

    .line 1883
    .local v42, "province":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1884
    .local v18, "city":Ljava/lang/String;
    const-wide/16 v5, 0x1f

    .line 1885
    .local v5, "NumofProvince":J
    const-wide/16 v11, 0x0

    .line 1886
    .local v11, "Numoftelephonecity":J
    const-wide/16 v7, 0x0

    .line 1887
    .local v7, "Numofmobilecity":J
    const-wide/16 v9, 0x0

    .line 1888
    .local v9, "Numofprefix":J
    const/16 v27, 0x0

    .line 1889
    .local v27, "i":I
    const/16 v31, 0x0

    .line 1890
    .local v31, "j":I
    const/16 v30, 0x0

    .line 1893
    .local v30, "isMobileNumber":Z
    const/16 v39, 0x0

    .line 1894
    .local v39, "numberLength":I
    sget v20, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_ENGLISH:I

    .line 1895
    .local v20, "currLanguage":I
    const-wide/16 v43, 0x0

    .line 1896
    .local v43, "start":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v52

    const-string v53, "number_region_activation_preference"

    const/16 v54, 0x1

    invoke-static/range {v52 .. v54}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v40

    .line 1899
    .local v40, "numberRegionActivited":I
    if-nez v40, :cond_0

    .line 1900
    const-string v52, "CallLogUtil"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "LiJian number_region_activation_preference: "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const/16 v52, 0x0

    .line 2155
    :goto_0
    return-object v52

    .line 1906
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getKnownCity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1907
    if-eqz v18, :cond_1

    move-object/from16 v52, v18

    .line 1908
    goto :goto_0

    .line 1916
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v52

    move-object/from16 v0, v52

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v32, v0

    .line 1917
    .local v32, "locale":Ljava/util/Locale;
    sget-object v52, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_2

    sget-object v52, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_2

    invoke-virtual/range {v32 .. v32}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v52

    const-string v53, "zh_HK"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_5

    .line 1919
    :cond_2
    sget v20, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_CHINA:I

    .line 1931
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v39

    .line 1932
    const/16 v52, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v52

    const/16 v53, 0x30

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_a

    .line 1934
    const/16 v52, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v52

    const/16 v53, 0x33

    move/from16 v0, v52

    move/from16 v1, v53

    if-ge v0, v1, :cond_8

    .line 1935
    const/16 v52, 0x3

    move/from16 v0, v39

    move/from16 v1, v52

    if-lt v0, v1, :cond_7

    .line 1936
    const/16 v52, 0x0

    const/16 v53, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 1945
    .local v29, "incomingCallNumPrefix":Ljava/lang/String;
    :goto_2
    const/16 v30, 0x0

    .line 1954
    :goto_3
    :try_start_0
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    if-nez v52, :cond_d

    .line 1955
    const-string v52, "CallLogUtil"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "try to open: "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    sget-object v54, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->BIN_DEFAULT_DIR:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    new-instance v37, Ljava/io/File;

    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->BIN_DEFAULT_DIR:Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1957
    .local v37, "myFile":Ljava/io/File;
    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->exists()Z

    move-result v52

    if-eqz v52, :cond_c

    .line 1958
    new-instance v52, Ljava/io/RandomAccessFile;

    sget-object v53, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->BIN_DEFAULT_DIR:Ljava/lang/String;

    const-string v54, "r"

    invoke-direct/range {v52 .. v54}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    .line 1966
    .end local v37    # "myFile":Ljava/io/File;
    :goto_4
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/16 v53, 0x0

    const/16 v54, 0x4

    move-object/from16 v0, v52

    move-object/from16 v1, v16

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 1967
    .local v19, "count":I
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->readUnsignedInt([B)J

    move-result-wide v45

    .line 1968
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/16 v53, 0x0

    const/16 v54, 0x20

    move-object/from16 v0, v52

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v15, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 1969
    new-instance v51, Ljava/lang/String;

    const-string v52, "UTF-16LE"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    invoke-direct {v0, v15, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1971
    .local v51, "versionInfo":Ljava/lang/String;
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/16 v53, 0x0

    const/16 v54, 0x20

    move-object/from16 v0, v52

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v15, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 1972
    new-instance v23, Ljava/lang/String;

    const-string v52, "UTF-16LE"

    move-object/from16 v0, v23

    move-object/from16 v1, v52

    invoke-direct {v0, v15, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1974
    .local v23, "dateInfo":Ljava/lang/String;
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/16 v53, 0x0

    const/16 v54, 0x4

    move-object/from16 v0, v52

    move-object/from16 v1, v16

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 1975
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->readUnsignedInt([B)J

    move-result-wide v5

    .line 1976
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/16 v53, 0x0

    const/16 v54, 0x4

    move-object/from16 v0, v52

    move-object/from16 v1, v16

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 1977
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->readUnsignedInt([B)J

    move-result-wide v11

    .line 1978
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/16 v53, 0x0

    const/16 v54, 0x4

    move-object/from16 v0, v52

    move-object/from16 v1, v16

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 1979
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->readUnsignedInt([B)J

    move-result-wide v7

    .line 1980
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/16 v53, 0x0

    const/16 v54, 0x4

    move-object/from16 v0, v52

    move-object/from16 v1, v16

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 1981
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->readUnsignedInt([B)J

    move-result-wide v9

    .line 1982
    sget-boolean v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v52, :cond_3

    .line 1983
    const-string v52, "CallLogUtil"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ","

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ","

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ","

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ","

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_3
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    invoke-virtual/range {v52 .. v52}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v21

    .line 2008
    .local v21, "currentPos":J
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    sget v53, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->titleSeekCount:I

    mul-int/lit8 v53, v53, 0x4

    move/from16 v0, v53

    int-to-long v0, v0

    move-wide/from16 v53, v0

    add-long v53, v53, v21

    invoke-virtual/range {v52 .. v54}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2012
    const-string v52, "CallLogUtil"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "byte count "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    sget v54, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ","

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    mul-long v52, v52, v5

    move-wide/from16 v0, v52

    long-to-int v0, v0

    move/from16 v52, v0

    move/from16 v0, v52

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 2014
    .local v17, "bufferProvince":[B
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/16 v53, 0x0

    sget v54, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v54, v54, v5

    move-wide/from16 v0, v54

    long-to-int v0, v0

    move/from16 v54, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v17

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 2017
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 2018
    .local v28, "iNum":I
    if-nez v30, :cond_15

    .line 2019
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    mul-long v52, v52, v11

    move-wide/from16 v0, v52

    long-to-int v0, v0

    move/from16 v52, v0

    move/from16 v0, v52

    new-array v0, v0, [B

    move-object/from16 v49, v0

    .line 2020
    .local v49, "telephoneCityProvince":[B
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/16 v53, 0x0

    sget v54, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v54, v54, v11

    move-wide/from16 v0, v54

    long-to-int v0, v0

    move/from16 v54, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 2023
    long-to-int v0, v11

    move/from16 v52, v0

    move-object/from16 v0, v49

    move/from16 v1, v28

    move/from16 v2, v52

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->teleBinarySearch([BII)I

    move-result v50

    .line 2025
    .local v50, "telret":I
    const/16 v52, -0x1

    move/from16 v0, v50

    move/from16 v1, v52

    if-ne v0, v1, :cond_e

    .line 2027
    sget-boolean v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v52, :cond_4

    .line 2028
    const-string v52, "CallLogUtil"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "incomingCallNumPrefix= "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    :cond_4
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2030
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 1922
    .end local v17    # "bufferProvince":[B
    .end local v19    # "count":I
    .end local v21    # "currentPos":J
    .end local v23    # "dateInfo":Ljava/lang/String;
    .end local v28    # "iNum":I
    .end local v29    # "incomingCallNumPrefix":Ljava/lang/String;
    .end local v49    # "telephoneCityProvince":[B
    .end local v50    # "telret":I
    .end local v51    # "versionInfo":Ljava/lang/String;
    :cond_5
    sget-object v52, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_6

    .line 1923
    sget v20, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_KOREA:I

    goto/16 :goto_1

    .line 1927
    :cond_6
    sget v20, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_ENGLISH:I

    goto/16 :goto_1

    .line 1938
    :cond_7
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 1940
    :cond_8
    const/16 v52, 0x4

    move/from16 v0, v39

    move/from16 v1, v52

    if-lt v0, v1, :cond_9

    .line 1941
    const/16 v52, 0x0

    const/16 v53, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .restart local v29    # "incomingCallNumPrefix":Ljava/lang/String;
    goto/16 :goto_2

    .line 1943
    .end local v29    # "incomingCallNumPrefix":Ljava/lang/String;
    :cond_9
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 1947
    :cond_a
    const/16 v52, 0x7

    move/from16 v0, v39

    move/from16 v1, v52

    if-lt v0, v1, :cond_b

    .line 1948
    const/16 v52, 0x0

    const/16 v53, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 1951
    .restart local v29    # "incomingCallNumPrefix":Ljava/lang/String;
    const/16 v30, 0x1

    goto/16 :goto_3

    .line 1950
    .end local v29    # "incomingCallNumPrefix":Ljava/lang/String;
    :cond_b
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 1960
    .restart local v29    # "incomingCallNumPrefix":Ljava/lang/String;
    .restart local v37    # "myFile":Ljava/io/File;
    :cond_c
    :try_start_1
    new-instance v52, Ljava/io/RandomAccessFile;

    sget-object v53, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

    const-string v54, "r"

    invoke-direct/range {v52 .. v54}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 2131
    .end local v37    # "myFile":Ljava/io/File;
    :catch_0
    move-exception v24

    .line 2132
    .local v24, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v52, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1962
    .end local v24    # "e":Ljava/lang/OutOfMemoryError;
    :cond_d
    :try_start_3
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1963
    const-string v52, "CallLogUtil"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "already open: "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    sget-object v54, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->BIN_DEFAULT_DIR:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 2133
    :catch_1
    move-exception v24

    .line 2134
    .local v24, "e":Ljava/lang/RuntimeException;
    :try_start_4
    const-string v52, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 2032
    .end local v24    # "e":Ljava/lang/RuntimeException;
    .restart local v17    # "bufferProvince":[B
    .restart local v19    # "count":I
    .restart local v21    # "currentPos":J
    .restart local v23    # "dateInfo":Ljava/lang/String;
    .restart local v28    # "iNum":I
    .restart local v49    # "telephoneCityProvince":[B
    .restart local v50    # "telret":I
    .restart local v51    # "versionInfo":Ljava/lang/String;
    :cond_e
    const/4 v13, 0x0

    .line 2033
    .local v13, "buffer1":B
    :try_start_5
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    mul-int v52, v52, v50

    aget-byte v13, v49, v52

    .line 2034
    move/from16 v41, v13

    .line 2035
    .local v41, "proindex":I
    if-gez v41, :cond_f

    .line 2036
    const-string v52, "CallLogUtil"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "buffer1= "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2038
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 2040
    :cond_f
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_CHINA:I

    move/from16 v0, v20

    move/from16 v1, v52

    if-ne v0, v1, :cond_11

    .line 2041
    if-eqz v41, :cond_10

    .line 2042
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    add-int/lit8 v53, v41, -0x1

    mul-int v52, v52, v53

    const/16 v53, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v42

    .line 2045
    :cond_10
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    mul-int v52, v52, v50

    add-int/lit8 v52, v52, 0x1

    const/16 v53, 0x20

    move-object/from16 v0, v49

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v18

    .line 2140
    .end local v49    # "telephoneCityProvince":[B
    .end local v50    # "telret":I
    :goto_5
    move-object/from16 v48, v42

    .line 2141
    move-object/from16 v47, v18

    .line 2143
    const-string v52, "CallLogUtil"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "strProvince: "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "strCity: "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "End"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2148
    if-eqz v48, :cond_1e

    if-eqz v47, :cond_1e

    .line 2149
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->addToKnownCity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_0

    .line 2047
    .restart local v49    # "telephoneCityProvince":[B
    .restart local v50    # "telret":I
    :cond_11
    :try_start_6
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_KOREA:I

    move/from16 v0, v20

    move/from16 v1, v52

    if-ne v0, v1, :cond_13

    .line 2048
    if-eqz v41, :cond_12

    .line 2049
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    add-int/lit8 v53, v41, -0x1

    mul-int v52, v52, v53

    add-int/lit8 v52, v52, 0x20

    add-int/lit8 v52, v52, 0x20

    const/16 v53, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v42

    .line 2053
    :cond_12
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    mul-int v52, v52, v50

    add-int/lit8 v52, v52, 0x1

    add-int/lit8 v52, v52, 0x20

    add-int/lit8 v52, v52, 0x40

    const/16 v53, 0x20

    move-object/from16 v0, v49

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_5

    .line 2056
    :cond_13
    if-eqz v41, :cond_14

    .line 2057
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    add-int/lit8 v53, v41, -0x1

    mul-int v52, v52, v53

    add-int/lit8 v52, v52, 0x20

    const/16 v53, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v42

    .line 2060
    :cond_14
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    mul-int v52, v52, v50

    add-int/lit8 v52, v52, 0x1

    add-int/lit8 v52, v52, 0x20

    const/16 v53, 0x40

    move-object/from16 v0, v49

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_5

    .line 2065
    .end local v13    # "buffer1":B
    .end local v41    # "proindex":I
    .end local v49    # "telephoneCityProvince":[B
    .end local v50    # "telret":I
    :cond_15
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    invoke-virtual/range {v52 .. v52}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v21

    .line 2066
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    sget v53, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    move/from16 v0, v53

    int-to-long v0, v0

    move-wide/from16 v53, v0

    mul-long v53, v53, v11

    add-long v53, v53, v21

    invoke-virtual/range {v52 .. v54}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2068
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mobileSize:I

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    mul-long v52, v52, v7

    move-wide/from16 v0, v52

    long-to-int v0, v0

    move/from16 v52, v0

    move/from16 v0, v52

    new-array v0, v0, [B

    move-object/from16 v34, v0

    .line 2069
    .local v34, "mobileCityProvince":[B
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/16 v53, 0x0

    sget v54, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mobileSize:I

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v54, v54, v7

    move-wide/from16 v0, v54

    long-to-int v0, v0

    move/from16 v54, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v34

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 2073
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->headerSize:I

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    mul-long v52, v52, v9

    move-wide/from16 v0, v52

    long-to-int v0, v0

    move/from16 v52, v0

    move/from16 v0, v52

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 2074
    .local v26, "headerbuf":[B
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/16 v53, 0x0

    sget v54, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->headerSize:I

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v54, v54, v9

    move-wide/from16 v0, v54

    long-to-int v0, v0

    move/from16 v54, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v26

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 2076
    const/16 v52, 0x0

    const/16 v53, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    .line 2077
    .local v35, "mobileHeader":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    .line 2078
    .local v38, "nMobileHeader":I
    long-to-int v0, v9

    move/from16 v52, v0

    move-object/from16 v0, v26

    move/from16 v1, v38

    move/from16 v2, v52

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mobileHeaderSearch([BII)I

    move-result v25

    .line 2080
    .local v25, "headerIndex":I
    if-gez v25, :cond_16

    .line 2082
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2083
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 2085
    :cond_16
    const/16 v52, 0x4e20

    move/from16 v0, v52

    new-array v0, v0, [B

    move-object/from16 v36, v0

    .line 2087
    .local v36, "mobilebuf":[B
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    invoke-virtual/range {v52 .. v52}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v21

    .line 2088
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v53, v0

    mul-int/lit8 v53, v53, 0x2

    move/from16 v0, v53

    int-to-long v0, v0

    move-wide/from16 v53, v0

    add-long v53, v53, v21

    invoke-virtual/range {v52 .. v54}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2090
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    const/16 v53, 0x0

    const/16 v54, 0x4e20

    move-object/from16 v0, v52

    move-object/from16 v1, v36

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 2091
    move/from16 v0, v28

    rem-int/lit16 v0, v0, 0x2710

    move/from16 v33, v0

    .line 2092
    .local v33, "lowMobile":I
    const/16 v52, 0x0

    mul-int/lit8 v53, v33, 0x2

    aget-byte v53, v36, v53

    aput-byte v53, v14, v52

    .line 2093
    const/16 v52, 0x1

    mul-int/lit8 v53, v33, 0x2

    add-int/lit8 v53, v53, 0x1

    aget-byte v53, v36, v53

    aput-byte v53, v14, v52

    .line 2094
    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->readUnsignedShort([B)I

    move-result v4

    .line 2095
    .local v4, "CityIndex":I
    if-gtz v4, :cond_17

    .line 2097
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2098
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 2100
    :cond_17
    const/4 v13, 0x0

    .line 2101
    .restart local v13    # "buffer1":B
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mobileSize:I

    add-int/lit8 v53, v4, -0x1

    mul-int v52, v52, v53

    aget-byte v13, v34, v52

    .line 2102
    move/from16 v41, v13

    .line 2103
    .restart local v41    # "proindex":I
    if-gez v41, :cond_18

    .line 2105
    sget-object v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->ois:Ljava/io/RandomAccessFile;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2106
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 2108
    :cond_18
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_CHINA:I

    move/from16 v0, v20

    move/from16 v1, v52

    if-ne v0, v1, :cond_1a

    .line 2109
    if-eqz v41, :cond_19

    .line 2110
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    add-int/lit8 v53, v41, -0x1

    mul-int v52, v52, v53

    const/16 v53, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v42

    .line 2113
    :cond_19
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mobileSize:I

    add-int/lit8 v53, v4, -0x1

    mul-int v52, v52, v53

    add-int/lit8 v52, v52, 0x1

    const/16 v53, 0x20

    move-object/from16 v0, v34

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_5

    .line 2115
    :cond_1a
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->LANGUAGE_KOREA:I

    move/from16 v0, v20

    move/from16 v1, v52

    if-ne v0, v1, :cond_1c

    .line 2116
    if-eqz v41, :cond_1b

    .line 2117
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    add-int/lit8 v53, v41, -0x1

    mul-int v52, v52, v53

    add-int/lit8 v52, v52, 0x20

    add-int/lit8 v52, v52, 0x20

    const/16 v53, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v42

    .line 2120
    :cond_1b
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mobileSize:I

    add-int/lit8 v53, v4, -0x1

    mul-int v52, v52, v53

    add-int/lit8 v52, v52, 0x1

    add-int/lit8 v52, v52, 0x20

    add-int/lit8 v52, v52, 0x40

    const/16 v53, 0x20

    move-object/from16 v0, v34

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_5

    .line 2123
    :cond_1c
    if-eqz v41, :cond_1d

    .line 2124
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->provinceSize:I

    add-int/lit8 v53, v41, -0x1

    mul-int v52, v52, v53

    add-int/lit8 v52, v52, 0x20

    const/16 v53, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v42

    .line 2127
    :cond_1d
    sget v52, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mobileSize:I

    add-int/lit8 v53, v4, -0x1

    mul-int v52, v52, v53

    add-int/lit8 v52, v52, 0x1

    add-int/lit8 v52, v52, 0x20

    const/16 v53, 0x40

    move-object/from16 v0, v34

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getBufferUnicodeString([BII)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v18

    goto/16 :goto_5

    .line 2135
    .end local v4    # "CityIndex":I
    .end local v13    # "buffer1":B
    .end local v17    # "bufferProvince":[B
    .end local v19    # "count":I
    .end local v21    # "currentPos":J
    .end local v23    # "dateInfo":Ljava/lang/String;
    .end local v25    # "headerIndex":I
    .end local v26    # "headerbuf":[B
    .end local v28    # "iNum":I
    .end local v33    # "lowMobile":I
    .end local v34    # "mobileCityProvince":[B
    .end local v35    # "mobileHeader":Ljava/lang/String;
    .end local v36    # "mobilebuf":[B
    .end local v38    # "nMobileHeader":I
    .end local v41    # "proindex":I
    .end local v51    # "versionInfo":Ljava/lang/String;
    :catch_2
    move-exception v24

    .line 2136
    .local v24, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v52, ""
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 2137
    .end local v24    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v52

    throw v52

    .line 2151
    .restart local v13    # "buffer1":B
    .restart local v17    # "bufferProvince":[B
    .restart local v19    # "count":I
    .restart local v21    # "currentPos":J
    .restart local v23    # "dateInfo":Ljava/lang/String;
    .restart local v28    # "iNum":I
    .restart local v41    # "proindex":I
    .restart local v51    # "versionInfo":Ljava/lang/String;
    :cond_1e
    if-eqz v47, :cond_1f

    .line 2152
    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->addToKnownCity(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v52, v47

    .line 2153
    goto/16 :goto_0

    .line 2155
    :cond_1f
    const-string v52, ""

    goto/16 :goto_0
.end method

.method public static getPrefferdSIMid(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2690
    const/4 v1, -0x1

    .line 2692
    .local v1, "simID":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "prefered_voice_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2696
    :goto_0
    const-string v2, "CallLogUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPrefferdSIMid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    add-int/lit8 v2, v1, -0x2

    return v2

    .line 2693
    :catch_0
    move-exception v0

    .line 2694
    .local v0, "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRejectNumberCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2885
    if-nez p1, :cond_1

    .line 2886
    const/4 v7, -0x1

    .line 2913
    :cond_0
    :goto_0
    return v7

    .line 2889
    :cond_1
    const/4 v8, 0x0

    .line 2890
    .local v8, "nReject_match":I
    const/4 v7, -0x1

    .line 2891
    .local v7, "mCount":I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2892
    .local v9, "rejectNum":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2893
    .local v10, "where":Ljava/lang/StringBuilder;
    const-string v0, "reject_number=\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2894
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2895
    const-string v0, "\' AND reject_match="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2896
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2898
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->PROJECTION_REJECT_NUMBER:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2903
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2904
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 2907
    :cond_2
    if-eqz v6, :cond_0

    .line 2908
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2909
    const/4 v6, 0x0

    goto :goto_0

    .line 2907
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2908
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2909
    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method public static getSIMIDToCallByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2577
    const-string v6, "-1"

    .line 2578
    .local v6, "SIMid":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2580
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v2, v9

    const-string v3, "data15"

    aput-object v3, v2, v10

    const-string v3, "mimetype= \'vnd.android.cursor.item/phone_v2\' AND data15 IS NOT NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2584
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2585
    const/4 v1, -0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2586
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2587
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2588
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2589
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v7, v6

    .line 2599
    .end local v6    # "SIMid":Ljava/lang/String;
    .local v7, "SIMid":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 2595
    .end local v7    # "SIMid":Ljava/lang/String;
    .restart local v6    # "SIMid":Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    .line 2596
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2598
    :cond_2
    const-string v1, "CallLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSIMIDToCallByNumber SIMid >>>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 2599
    .end local v6    # "SIMid":Ljava/lang/String;
    .restart local v7    # "SIMid":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getTimeDisplayScheme(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2415
    const/4 v0, 0x0

    .line 2416
    .local v0, "timeType":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_display_scheme"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2417
    return v0
.end method

.method public static haveVOIPCalls(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1012
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 1015
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "logtype=800"

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1019
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1021
    .local v6, "callCount":I
    if-eqz v7, :cond_1

    .line 1022
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1023
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1025
    if-lez v6, :cond_0

    move v0, v8

    .line 1030
    :goto_0
    return v0

    :cond_0
    move v0, v9

    .line 1028
    goto :goto_0

    :cond_1
    move v0, v9

    .line 1030
    goto :goto_0
.end method

.method public static interceptDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 365
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 366
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sprint.zone.DSA_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v1, "vnd.sprint.zone/vnd.sprint.zone.main"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v1, "com.sprint.zone.source"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sprint.zone"

    const-string v3, "com.sprint.zone.PageMain"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 370
    return-object v0
.end method

.method public static isAutoDial(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0xb

    .line 2628
    const/4 v0, -0x1

    .line 2629
    .local v0, "isAutoDial":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_dial_enable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2631
    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBlocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2987
    const/4 v7, 0x0

    .line 2988
    .local v7, "nReject_match":I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2989
    .local v8, "rejectNum":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 2990
    .local v9, "where":Ljava/lang/StringBuffer;
    const-string v0, "reject_number="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2991
    const-string v0, "\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2992
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2993
    const-string v0, "\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2994
    const-string v0, " AND reject_match="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2995
    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2996
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v10

    .line 3000
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3004
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3005
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3006
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 3015
    :goto_0
    return v0

    .line 3009
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 3010
    goto :goto_0

    .line 3013
    :cond_1
    const-string v0, "CallLogUtil"

    const-string v1, "isBlocked() - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 3015
    goto :goto_0
.end method

.method public static isBlockedNumbers(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3019
    .local p1, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3020
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3021
    const/4 v1, 0x1

    .line 3024
    :goto_1
    return v1

    .line 3019
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3024
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isCDMANetworkReady()Z
    .locals 4

    .prologue
    .line 2603
    const/4 v1, 0x0

    .line 2604
    .local v1, "isNetworkReady":Z
    const-string v2, "gsm.sim.currentcardstatus"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2606
    .local v0, "SimState":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 2607
    const/4 v1, 0x1

    .line 2611
    :goto_0
    return v1

    .line 2609
    :cond_0
    const-string v2, "CallLogUtil"

    const-string v3, "isCDMANetworkReady() failed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isCalledPartyBCDNumber(Ljava/lang/String;)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2863
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 2880
    :cond_0
    :goto_0
    return v4

    .line 2866
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2867
    .local v1, "chars":[C
    array-length v3, v1

    .line 2869
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 2870
    aget-char v0, v1, v2

    .line 2871
    .local v0, "c":C
    if-nez v2, :cond_3

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 2869
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2873
    :cond_3
    const/16 v5, 0x30

    if-lt v0, v5, :cond_4

    const/16 v5, 0x39

    if-le v0, v5, :cond_2

    .line 2875
    :cond_4
    const/16 v5, 0x2a

    if-eq v0, v5, :cond_2

    const/16 v5, 0x23

    if-eq v0, v5, :cond_2

    const/16 v5, 0x61

    if-eq v0, v5, :cond_2

    const/16 v5, 0x62

    if-eq v0, v5, :cond_2

    const/16 v5, 0x63

    if-ne v0, v5, :cond_0

    goto :goto_2

    .line 2880
    .end local v0    # "c":C
    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isCheckedBefore(Landroid/content/Context;)Z
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 3085
    const-string v1, "logslist_pref"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3086
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "reject_popup"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isGSMNetworkReady()Z
    .locals 4

    .prologue
    .line 2615
    const/4 v1, 0x0

    .line 2616
    .local v1, "isNetworkReady":Z
    const-string v2, "gsm.sim.currentcardstatus2"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2617
    .local v0, "SimState":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 2618
    const/4 v1, 0x1

    .line 2622
    :goto_0
    return v1

    .line 2620
    :cond_0
    const-string v2, "CallLogUtil"

    const-string v3, "isGSMNetworkReady() failed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isKnoxMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2702
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2703
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "sec_container_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isNetworkAvailableForDirectCall(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1112
    if-nez p0, :cond_1

    .line 1131
    :cond_0
    :goto_0
    return v2

    .line 1117
    :cond_1
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1119
    .local v1, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1120
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v2, v3

    .line 1129
    goto :goto_0

    :sswitch_1
    move v2, v3

    .line 1125
    goto :goto_0

    :sswitch_2
    move v2, v3

    .line 1127
    goto :goto_0

    .line 1123
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public static isNetworkRoaming()Z
    .locals 2

    .prologue
    .line 2401
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2402
    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2405
    :goto_0
    return v0

    .line 2402
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2405
    :cond_2
    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isPenMultiWindow(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2859
    const/4 v0, 0x0

    return v0
.end method

.method public static isPrefferdSIM(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2707
    const/4 v0, -0x1

    .line 2709
    .local v0, "SimId":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "prefered_voice_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2713
    :goto_0
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 2710
    :catch_0
    move-exception v1

    .line 2711
    .local v1, "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2713
    .end local v1    # "se":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isTPhoneEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3090
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "skt_phone20_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isToday(J)Z
    .locals 4
    .param p0, "when"    # J

    .prologue
    .line 2301
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 2303
    .local v0, "time":Landroid/text/format/Time;
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->systemTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 2304
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 2306
    iget v1, v0, Landroid/text/format/Time;->year:I

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->systemTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/text/format/Time;->month:I

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->systemTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->systemTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUnBlockedNumbers(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3028
    .local p1, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3029
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3030
    const/4 v1, 0x1

    .line 3033
    :goto_1
    return v1

    .line 3028
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3033
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static make133CallbackCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 347
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 349
    .local v0, "callIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 350
    const-string v1, "ctc_133callbackcall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 353
    return-void
.end method

.method public static makeCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 168
    const/4 v4, -0x1

    .line 170
    .local v4, "mSIMidTocall":I
    move-object v5, p1

    .line 172
    .local v5, "numberString":Ljava/lang/String;
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 173
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.CALL_PRIVILEGED"

    const-string v8, "sip"

    invoke-static {v8, v5, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 178
    .local v1, "callIntent":Landroid/content/Intent;
    :goto_0
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    const-string v7, "feature_common_use_multisim"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 181
    invoke-static {p0, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getSIMIDToCallByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "SIMidToCall":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 183
    if-eqz v0, :cond_1

    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 184
    if-eqz v4, :cond_0

    if-ne v4, v10, :cond_1

    .line 185
    :cond_0
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getCurrentNetwork()I

    move-result v7

    if-eq v4, v7, :cond_7

    .line 186
    const-string v7, "simSlot_Ext"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    :goto_1
    const-string v7, "CallLogUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSIMtoCall SIMid >>>>> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v0    # "SIMidToCall":Ljava/lang/String;
    :cond_1
    const-string v7, "feature_assistdialing"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 196
    const-string v7, "origin"

    const-string v8, "from_dialer"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    :cond_2
    const-string v7, "com.android.phone"

    const-string v8, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v7, "feature_minimize_dialer_in_call"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, p0

    .line 201
    check-cast v7, Landroid/app/Activity;

    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isPenMultiWindow(Landroid/app/Activity;)Z

    move-result v7

    if-ne v7, v10, :cond_3

    .line 202
    new-instance v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-object v7, p0

    check-cast v7, Landroid/app/Activity;

    invoke-direct {v3, v7}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    .line 203
    .local v3, "mMultiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->minimizeWindow()V

    .line 207
    .end local v3    # "mMultiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    :cond_3
    const-string v7, "feature_skt"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 208
    const-string v7, "call_from_sec"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    :cond_4
    sget-boolean v7, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v7, :cond_5

    .line 212
    new-instance v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    move-object v7, p0

    check-cast v7, Landroid/app/Activity;

    invoke-direct {v2, v7}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    .line 213
    .local v2, "mMW":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 214
    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getZoneInfo()I

    move-result v6

    .line 215
    .local v6, "zoneInfo":I
    const-string v7, "CallLogUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zoneInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v7, "zone_info"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    .end local v2    # "mMW":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    .end local v6    # "zoneInfo":I
    :cond_5
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 222
    return-void

    .line 176
    .end local v1    # "callIntent":Landroid/content/Intent;
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.CALL_PRIVILEGED"

    const-string v8, "tel"

    invoke-static {v8, v5, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1    # "callIntent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 188
    .restart local v0    # "SIMidToCall":Ljava/lang/String;
    :cond_7
    const-string v7, "simSlot"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method public static makeCallForResult(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isDirectCall"    # Z
    .param p3, "direction"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 229
    move-object v1, p1

    .line 231
    .local v1, "numberString":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 235
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "sip"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 241
    .local v0, "callIntent":Landroid/content/Intent;
    :goto_1
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 243
    const-string v2, "feature_assistdialing"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    const-string v2, "origin"

    const-string v3, "from_dialer"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    :cond_2
    if-eqz p2, :cond_3

    .line 247
    const-string v2, "android.phone.extra.CALL_DIRECTCALL"

    const-string v3, "CallLogUtil"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v2, "ctc_roamingcall"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    const-string v2, "directcall"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 254
    const-string v2, "android.phone.extra.CALL_DIRECTCALL_DIRECTION"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    :cond_4
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 239
    .end local v0    # "callIntent":Landroid/content/Intent;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "callIntent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public static makeCallNoNewTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 266
    move-object v1, p1

    .line 268
    .local v1, "numberString":Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "sip"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 275
    .local v0, "callIntent":Landroid/content/Intent;
    :goto_0
    const-string v2, "feature_assistdialing"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    const-string v2, "origin"

    const-string v3, "from_dialer"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    :cond_0
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 280
    return-void

    .line 272
    .end local v0    # "callIntent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "callIntent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public static makeFMC(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1004
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.voip.VOIP_CALL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1006
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1007
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1008
    return-void
.end method

.method public static makeIntlRoamingCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 338
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 340
    .local v0, "callIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 341
    const-string v1, "ctc_roamingcall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 344
    return-void
.end method

.method private static makeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 2555
    move-object v0, p0

    .line 2557
    .local v0, "IndexNumber":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 2558
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2560
    :cond_0
    :goto_1
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 2561
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2563
    :cond_1
    :goto_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 2564
    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2566
    :cond_2
    :goto_3
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 2567
    const-string v1, "("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2569
    :cond_3
    :goto_4
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 2570
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2572
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static makeSms(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 933
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 934
    .local v1, "isMMSAvailable":Z
    if-eqz v1, :cond_1

    .line 935
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "sms"

    const-string v4, ","

    const-string v5, "P"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    const-string v6, "W"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 938
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 940
    const-string v2, "com.android.mms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 951
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 945
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 946
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.app.popupuireceiver"

    const-string v3, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    const-string v2, "app_package_name"

    const-string v3, "com.android.mms"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static makeVideoCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 322
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "videocall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 324
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 326
    return-void
.end method

.method public static makeVideoCallNoNewTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 332
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "videocall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 335
    return-void
.end method

.method static mobileHeaderSearch([BII)I
    .locals 5
    .param p0, "header"    # [B
    .param p1, "iNum"    # I
    .param p2, "count"    # I

    .prologue
    .line 1747
    const/4 v2, 0x0

    .line 1748
    .local v2, "i":I
    const/4 v3, 0x2

    new-array v1, v3, [B

    .line 1749
    .local v1, "buffer2":[B
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 1751
    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->headerSize:I

    mul-int/2addr v4, v2

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 1752
    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->headerSize:I

    mul-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 1753
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->readUnsignedShort([B)I

    move-result v0

    .line 1754
    .local v0, "areaCode":I
    if-ne v0, p1, :cond_0

    .line 1759
    .end local v0    # "areaCode":I
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 1749
    .restart local v0    # "areaCode":I
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1759
    .end local v0    # "areaCode":I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static openBlockNumberSettingDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const v10, 0x7f0e03aa

    const v9, 0x7f0e0347

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 750
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 751
    .local v2, "rejectNumer":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 752
    :cond_0
    const-string v3, "CallLogUtil"

    const-string v4, "invalid number"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const v3, 0x7f0e041e

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 930
    :goto_0
    return-void

    .line 756
    :cond_1
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcokNumberResult:[Z

    aput-boolean v7, v5, v8

    aput-boolean v7, v4, v7

    aput-boolean v7, v3, v6

    .line 758
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 760
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "separate_call_reject"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 761
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mOriginalBlcokNumberSetting:[Z

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    invoke-static {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVoiceCallblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v4, v6

    aput-boolean v5, v3, v6

    .line 762
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mOriginalBlcokNumberSetting:[Z

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    invoke-static {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVideoCallblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v4, v7

    aput-boolean v5, v3, v7

    .line 763
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mOriginalBlcokNumberSetting:[Z

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    invoke-static {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkMessageblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v4, v8

    aput-boolean v5, v3, v8

    .line 765
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/CharSequence;

    const v3, 0x7f0e03a8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v6

    const v3, 0x7f0e03a9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v8

    .line 771
    .local v1, "mEntries":[Ljava/lang/CharSequence;
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$1;

    invoke-direct {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$1;-><init>()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 779
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$2;

    invoke-direct {v3, p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 884
    :goto_1
    const v3, 0x7f0e03a6

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 885
    const v3, 0x7f0e02d4

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 887
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    .line 888
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 929
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 832
    .end local v1    # "mEntries":[Ljava/lang/CharSequence;
    :cond_2
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mOriginalBlcokNumberSetting:[Z

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    invoke-static {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVoiceCallblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v4, v6

    aput-boolean v5, v3, v6

    .line 833
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mOriginalBlcokNumberSetting:[Z

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    invoke-static {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkMessageblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v4, v7

    aput-boolean v5, v3, v7

    .line 835
    new-array v1, v8, [Ljava/lang/CharSequence;

    const v3, 0x7f0e03a7

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v7

    .line 840
    .restart local v1    # "mEntries":[Ljava/lang/CharSequence;
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->mBlcoknumbersetting:[Z

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$3;

    invoke-direct {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$3;-><init>()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 847
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;

    invoke-direct {v3, p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public static randomThumbnail(I)I
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 1077
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 1079
    .local v1, "mRandomizer":Ljava/util/Random;
    const/4 v3, 0x5

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 1086
    .local v0, "fallbacks":[I
    const/4 v2, 0x0

    .line 1087
    .local v2, "randomNum":I
    if-nez p0, :cond_0

    .line 1088
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 1091
    :goto_0
    aget v3, v0, v2

    return v3

    .line 1090
    :cond_0
    rem-int/lit8 v2, p0, 0x5

    goto :goto_0

    .line 1079
    nop

    :array_0
    .array-data 4
        0x7f0203a7
        0x7f0203a8
        0x7f0203a9
        0x7f0203aa
        0x7f0203ab
    .end array-data
.end method

.method public static readAirViewModeValue(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2719
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "air_view_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->airViewMode:I

    .line 2721
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "finger_air_view_information_preview"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->settingInfoPreview:Z

    .line 2722
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "pen_hovering_information_preview"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->settingInfoPreviewbyPen:Z

    .line 2731
    const-string v0, "CallLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAirViewModeValue : airViewMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->airViewMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    const-string v0, "CallLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "                                   : settingInfoPreview : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->settingInfoPreview:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    const-string v0, "CallLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "                                   : settingInfoPreviewbyPen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->settingInfoPreviewbyPen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    const-string v0, "CallLogUtil"

    const-string v1, "airview global setting : false false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    return-void

    :cond_0
    move v0, v2

    .line 2721
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2722
    goto :goto_1
.end method

.method public static readUnsignedInt([B)J
    .locals 11
    .param p0, "bytes"    # [B

    .prologue
    .line 1712
    const/4 v8, 0x0

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v0, v8

    .line 1713
    .local v0, "b0":J
    const/4 v8, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x8

    shl-long v2, v8, v10

    .line 1714
    .local v2, "b1":J
    const/4 v8, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x10

    shl-long v4, v8, v10

    .line 1715
    .local v4, "b2":J
    const/4 v8, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x18

    shl-long v6, v8, v10

    .line 1716
    .local v6, "b3":J
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    return-wide v8
.end method

.method public static readUnsignedShort([B)I
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 1721
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v0, v2, 0xff

    .line 1722
    .local v0, "b0":I
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v2, 0x8

    .line 1723
    .local v1, "b1":I
    or-int v2, v0, v1

    return v2
.end method

.method public static sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f0e02d2

    .line 954
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v2

    .line 955
    .local v2, "isMMSAvailable":Z
    if-eqz v2, :cond_3

    .line 956
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 957
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 958
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 961
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 963
    .local v0, "infoBuffer":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 964
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 971
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 972
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    const-string v3, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    const-string v3, "sms_body"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 984
    .end local v0    # "infoBuffer":Ljava/lang/StringBuffer;
    .end local p0    # "context":Landroid/content/Context;
    :goto_1
    return-void

    .line 966
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "infoBuffer":Ljava/lang/StringBuffer;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 967
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 968
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 977
    .end local v0    # "infoBuffer":Ljava/lang/StringBuffer;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 978
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.popupuireceiver"

    const-string v4, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 979
    const-string v3, "app_package_name"

    const-string v4, "com.android.mms"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method public static setCurrentNetwork(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 2635
    const-string v5, "feature_common_use_multisim"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "feature_common_dsds_support "

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string v5, "feature_common_dsds_support "

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/dialertab/util/DialerUtilsDsds;->getDualSimState(Landroid/content/Context;)I

    move-result v5

    if-eq v5, v8, :cond_2

    .line 2676
    :cond_1
    :goto_0
    return-void

    .line 2641
    :cond_2
    const/4 v2, 0x0

    .line 2643
    .local v2, "index":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "prefered_voice_call"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2647
    :goto_1
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 2648
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 2651
    .local v3, "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    :try_start_1
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I

    move-result v5

    if-eqz v5, :cond_1

    .line 2652
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2654
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCalls(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 2655
    :catch_0
    move-exception v1

    .line 2656
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v5, "CallLogUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ITelephony threw RemoteException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2644
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v3    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v4

    .line 2645
    .local v4, "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v4}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 2658
    .end local v4    # "se":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v3    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_2
    move-exception v0

    .line 2659
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "CallLogUtil"

    const-string v6, "ITelephony NullPointerException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2662
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_3
    if-ne v2, v8, :cond_1

    .line 2663
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 2665
    .restart local v3    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    :try_start_2
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I

    move-result v5

    if-eq v5, v7, :cond_1

    .line 2666
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2668
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCalls(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 2669
    :catch_3
    move-exception v1

    .line 2670
    .restart local v1    # "ex":Landroid/os/RemoteException;
    const-string v5, "CallLogUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ITelephony threw RemoteException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2672
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_4
    move-exception v0

    .line 2673
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    const-string v5, "CallLogUtil"

    const-string v6, "ITelephony NullPointerException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static setSystemTime()V
    .locals 3

    .prologue
    .line 2296
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->systemTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 2297
    return-void
.end method

.method public static setTimeFormat(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # J

    .prologue
    .line 1063
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1065
    .local v1, "dateBuffer":Ljava/lang/StringBuffer;
    const v0, 0x80b00

    .line 1068
    .local v0, "baseFormatFlags":I
    const v2, 0x80b01

    invoke-static {p0, p1, p2, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1071
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static showDialog(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/app/AlertDialog;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .line 3037
    .local p1, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 3039
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0401d8

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3041
    .local v0, "discover_notify":Landroid/widget/LinearLayout;
    const v5, 0x7f09042f

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 3043
    .local v4, "notify_confirm":Landroid/widget/LinearLayout;
    const v5, 0x7f090430

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 3046
    .local v3, "not_show_again":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v5, 0x7f0e0245

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3047
    .local v2, "mPopupString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 3049
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->requestFocus()Z

    .line 3051
    invoke-static {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isCheckedBefore(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 3053
    new-instance v5, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$6;

    invoke-direct {v5, p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$6;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3062
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0e02fd

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0347

    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$8;

    invoke-direct {v7, p0, v3, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$8;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e02d4

    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$7;

    invoke-direct {v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil$7;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method private static startCheckCountryCodes(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "CheckNumber"    # Ljava/lang/String;

    .prologue
    .line 2798
    const/4 v6, 0x0

    .line 2799
    .local v6, "mCountry":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2800
    .local v5, "mCode":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2801
    .local v7, "mCountryName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2802
    .local v4, "mCheckNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2803
    .local v2, "checkString":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2804
    .local v1, "checkName":Ljava/lang/StringBuilder;
    const/16 v0, 0xae

    .line 2806
    .local v0, "MaxCount":I
    if-eqz p1, :cond_0

    const-string v10, "+"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2807
    move-object v4, p1

    .line 2814
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f08004e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 2815
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f08004f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 2816
    array-length v9, v5

    .line 2818
    .local v9, "mTotalCountryCount":I
    if-eqz v4, :cond_1

    const-string v10, "+1"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v6, :cond_1

    if-le v9, v0, :cond_1

    .line 2821
    const/16 v10, 0x85

    aget-object v10, v6, v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2822
    const-string v10, "/"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2823
    const/16 v10, 0x86

    aget-object v10, v6, v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2824
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 2847
    .end local v7    # "mCountryName":Ljava/lang/String;
    .local v8, "mCountryName":Ljava/lang/String;
    :goto_1
    return-object v8

    .line 2809
    .end local v8    # "mCountryName":Ljava/lang/String;
    .end local v9    # "mTotalCountryCount":I
    .restart local v7    # "mCountryName":Ljava/lang/String;
    :cond_0
    const-string v10, "+"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2811
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2828
    .restart local v9    # "mTotalCountryCount":I
    :cond_1
    if-eqz v4, :cond_2

    const-string v10, "+7"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v6, :cond_2

    if-le v9, v0, :cond_2

    .line 2831
    const/16 v10, 0x73

    aget-object v10, v6, v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2832
    const-string v10, "/"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2833
    const/16 v10, 0x1a

    aget-object v10, v6, v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2834
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 2835
    .end local v7    # "mCountryName":Ljava/lang/String;
    .restart local v8    # "mCountryName":Ljava/lang/String;
    goto :goto_1

    .line 2838
    .end local v8    # "mCountryName":Ljava/lang/String;
    .restart local v7    # "mCountryName":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 2839
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v9, :cond_3

    .line 2840
    if-eqz v4, :cond_4

    aget-object v10, v5, v3

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2841
    aget-object v7, v6, v3

    .end local v3    # "i":I
    :cond_3
    move-object v8, v7

    .line 2847
    .end local v7    # "mCountryName":Ljava/lang/String;
    .restart local v8    # "mCountryName":Ljava/lang/String;
    goto :goto_1

    .line 2839
    .end local v8    # "mCountryName":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v7    # "mCountryName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method static teleBinarySearch([BII)I
    .locals 6
    .param p0, "telephoneCityProvince"    # [B
    .param p1, "iNum"    # I
    .param p2, "count"    # I

    .prologue
    .line 1729
    const/4 v2, 0x0

    .line 1730
    .local v2, "i":I
    const/4 v3, 0x2

    new-array v1, v3, [B

    .line 1732
    .local v1, "buffer2":[B
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 1734
    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    mul-int/2addr v4, v2

    sget v5, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 1735
    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    mul-int/2addr v4, v2

    sget v5, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->telSize:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 1736
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->readUnsignedShort([B)I

    move-result v0

    .line 1737
    .local v0, "areaCode":I
    if-ne v0, p1, :cond_0

    .line 1742
    .end local v0    # "areaCode":I
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 1732
    .restart local v0    # "areaCode":I
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1742
    .end local v0    # "areaCode":I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static unblockContact(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 478
    const/4 v9, 0x0

    .line 479
    .local v9, "nReject_match":I
    const/4 v13, 0x1

    .line 480
    .local v13, "reject_checked":I
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 481
    .local v11, "rejectNum":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .local v15, "where":Ljava/lang/StringBuilder;
    const-string v1, "call_block_ui"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 484
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v1, :cond_0

    .line 485
    const-string v1, "CallLogUtil"

    const-string v2, "unblockContact"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    .line 488
    const-string v1, "reject_number"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string v1, " LIKE "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const-string v1, "\'%"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const/16 v1, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :goto_0
    const-string v1, "\'"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const-string v1, " AND reject_match="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    const-string v1, " AND reject_checked="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reject_number"

    aput-object v2, v3, v1

    .line 506
    .local v3, "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 510
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_a

    .line 511
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 512
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v1, :cond_1

    .line 513
    const-string v1, "CallLogUtil"

    const-string v2, "unblockContact - Cursor c count is zero"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 571
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_1
    const-string v1, "call_block_ui"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 572
    const v1, 0x7f0e0300

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 574
    :cond_3
    return-void

    .line 493
    :cond_4
    const-string v1, "reject_number="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string v1, "\'"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 516
    .restart local v3    # "projection":[Ljava/lang/String;
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_5
    const/4 v8, 0x0

    .line 517
    .local v8, "i":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .local v10, "numsBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 522
    :cond_6
    const-string v1, "reject_number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 523
    .local v12, "rejectNumber":Ljava/lang/String;
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v1, :cond_7

    .line 524
    const-string v1, "CallLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unblockContact : rejectNumber"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "number"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_7
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 527
    add-int/lit8 v8, v8, 0x1

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string v1, " , "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 532
    const-string v1, "-1"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 536
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v1, :cond_9

    .line 537
    const-string v1, "CallLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unblockContact"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_9
    if-lez v8, :cond_2

    .line 540
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    .local v14, "unblockWhere":Ljava/lang/StringBuilder;
    const-string v1, "reject_number"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string v1, " IN ( "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v1, " )"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const-string v1, " AND reject_match="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    const-string v1, " AND reject_checked="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 556
    .end local v8    # "i":I
    .end local v10    # "numsBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "rejectNumber":Ljava/lang/String;
    .end local v14    # "unblockWhere":Ljava/lang/StringBuilder;
    :cond_a
    const-string v1, "CallLogUtil"

    const-string v2, "unblockContact - Cursor c is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 560
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_b
    const-string v1, "reject_number="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string v1, "\'"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string v1, "\'"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string v1, " AND reject_match="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static unblockContact(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2969
    .local p1, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 2971
    .local v1, "nReject_match":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 2972
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2973
    .local v2, "rejectNum":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2975
    .local v3, "where":Ljava/lang/StringBuilder;
    const-string v4, "reject_number=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2976
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2977
    const-string v4, "\' AND reject_match="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2978
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2980
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2971
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2983
    .end local v2    # "rejectNum":Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/StringBuilder;
    :cond_0
    const v4, 0x7f0e0300

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2984
    return-void
.end method

.method public static unblockMessageContact(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 736
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, "rejectNum":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.intent.action.SPAM_FILTER_DELETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 739
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "filter_type"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 740
    const-string v2, "filter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    const-string v2, "enable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 742
    const-string v2, "criteria"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 744
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 745
    const-string v2, "CallLogUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unblockMessageContact sendBroadcast intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-void
.end method

.method public static unblockVideoCallContact(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 623
    const/4 v9, 0x0

    .line 624
    .local v9, "nReject_match":I
    const/4 v13, 0x1

    .line 625
    .local v13, "reject_checked":I
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 626
    .local v11, "rejectNum":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    .local v15, "where":Ljava/lang/StringBuilder;
    const-string v1, "call_block_ui"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 629
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v1, :cond_0

    .line 630
    const-string v1, "CallLogUtil"

    const-string v2, "unblockVideoCallContact"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    .line 633
    const-string v1, "reject_number"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    const-string v1, " LIKE "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    const-string v1, "\'%"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const/16 v1, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    :goto_0
    const-string v1, "\'"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string v1, " AND reject_match="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 645
    const-string v1, " AND reject_checked="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 647
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reject_number"

    aput-object v2, v3, v1

    .line 651
    .local v3, "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 655
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_a

    .line 656
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 657
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v1, :cond_1

    .line 658
    const-string v1, "CallLogUtil"

    const-string v2, "unblockVideoCallContact - Cursor c count is zero"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 715
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_1
    const-string v1, "call_block_ui"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 716
    const v1, 0x7f0e0300

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 718
    :cond_3
    return-void

    .line 638
    :cond_4
    const-string v1, "reject_number="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    const-string v1, "\'"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 661
    .restart local v3    # "projection":[Ljava/lang/String;
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_5
    const/4 v8, 0x0

    .line 662
    .local v8, "i":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .local v10, "numsBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 667
    :cond_6
    const-string v1, "reject_number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 668
    .local v12, "rejectNumber":Ljava/lang/String;
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v1, :cond_7

    .line 669
    const-string v1, "CallLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unblockVideoCallContact : rejectNumber"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "number"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_7
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 672
    add-int/lit8 v8, v8, 0x1

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    const-string v1, " , "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 677
    const-string v1, "-1"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 681
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->DBG:Z

    if-eqz v1, :cond_9

    .line 682
    const-string v1, "CallLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unblockVideoCallContact"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_9
    if-lez v8, :cond_2

    .line 685
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    .local v14, "unblockWhere":Ljava/lang/StringBuilder;
    const-string v1, "reject_number"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const-string v1, " IN ( "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const-string v1, " )"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const-string v1, " AND reject_match="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 693
    const-string v1, " AND reject_checked="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 701
    .end local v8    # "i":I
    .end local v10    # "numsBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "rejectNumber":Ljava/lang/String;
    .end local v14    # "unblockWhere":Ljava/lang/StringBuilder;
    :cond_a
    const-string v1, "CallLogUtil"

    const-string v2, "unblockVideoCallContact - Cursor c is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 704
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_b
    const-string v1, "reject_number="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    const-string v1, "\'"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const-string v1, "\'"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    const-string v1, " AND reject_match="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static updateContact(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 385
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 388
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const-string v1, "sip"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    :goto_0
    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v1, "hidecreatelabel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 398
    return-void

    .line 391
    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v1, "phone_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static updateMessageunblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1681
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1683
    .local v2, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1685
    .local v1, "rejectNum":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.mms.intent.action.SPAM_FILTER_UPDATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1686
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "filter_type"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1687
    const-string v3, "filter"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1688
    const-string v3, "enable"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1690
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1691
    const-string v3, "CallLogUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unblockMessageContact sendBroadcast intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    return v6
.end method

.method public static updateVideoCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1494
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1496
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1498
    .local v0, "rejectNum":Ljava/lang/String;
    const-string v3, "reject_checked"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1500
    .local v2, "where":Ljava/lang/StringBuilder;
    const-string v3, "reject_number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    const-string v3, " = ? AND reject_match = 0 AND reject_checked = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1505
    return v8
.end method

.method public static updateVoiceCallunblocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1307
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1309
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1311
    .local v0, "rejectNum":Ljava/lang/String;
    const-string v3, "reject_checked"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1313
    .local v2, "where":Ljava/lang/StringBuilder;
    const-string v3, "reject_number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    const-string v3, " = ? AND reject_match = 0 AND reject_checked = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1318
    return v8
.end method

.method public static viewContact(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactID"    # I

    .prologue
    .line 401
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "bufId":Ljava/lang/StringBuffer;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 405
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 406
    return-void
.end method

.method public static viewProfileContact(Landroid/content/Context;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactID"    # J

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, "bufId":Ljava/lang/StringBuffer;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 413
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 414
    return-void
.end method
