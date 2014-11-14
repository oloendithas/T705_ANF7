.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
.field private static final CCC_LENGTH:I

.field private static final CLIDIGITS_KEY:Ljava/lang/String; = "Clidigits"

.field private static final CLIDIGITS_PREFERENCES_NAME:Ljava/lang/String; = "clidigits.preferences_name"

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final COUNTRY_CALLING_CALL:[Z

.field public static final DASH:Ljava/lang/String; = "-"

.field protected static final DBG:Z = false

.field protected static final ECC_CATEGORY_Ambulance:I = 0x2

.field private static final ECC_CATEGORY_Cyber_Terror:I = 0x13

.field private static final ECC_CATEGORY_Default_Emergency_Center:I = 0x0

.field private static final ECC_CATEGORY_Drug_Report:I = 0x11

.field protected static final ECC_CATEGORY_Fire_Brigade:I = 0x4

.field protected static final ECC_CATEGORY_Marine_Guard:I = 0x8

.field private static final ECC_CATEGORY_Mountain_Rescue:I = 0x10

.field private static final ECC_CATEGORY_National_Intelligence_Service_KT:I = 0x7

.field private static final ECC_CATEGORY_National_Intelligence_Service_SKT:I = 0x6

.field private static final ECC_CATEGORY_Normal_Call:I = 0xff

.field protected static final ECC_CATEGORY_Police:I = 0x1

.field private static final ECC_CATEGORY_School_Violence:I = 0x12

.field private static final ECC_CATEGORY_Smuggling_Report:I = 0x9

.field private static final ECC_CATEGORY_Spy_Report:I = 0x3

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_KOREA:I = 0x52

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final IP_CALL_PREFIX:Ljava/lang/String; = "ip_call_prefix_sub"

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray;

.field private static final KRNP_STATE_0505_START:I = 0xe

.field private static final KRNP_STATE_AREA_SEOUL:I = 0x6

.field private static final KRNP_STATE_EXCEPT_CASE_1:I = 0xa

.field private static final KRNP_STATE_EXCEPT_CASE_2:I = 0xb

.field private static final KRNP_STATE_NORMAL:I = 0x5

.field private static final KRNP_STATE_PLUS:I = 0x9

.field private static final KRNP_STATE_SHARP:I = 0xd

.field private static final KRNP_STATE_SHARP_NINE:I = 0x8

.field private static final KRNP_STATE_STAR:I = 0xc

.field private static final KRNP_STATE_ZERO_START:I = 0x7

.field public static final LEFT_BRACKET:Ljava/lang/String; = "("

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field private static final MCC_OTA_URI:Landroid/net/Uri;

.field static final MIN_MATCH:I

.field static final MIN_MATCH_CHINA:I = 0xb

.field static final MIN_MATCH_HK:I = 0x8

.field static final MIN_MATCH_TW:I = 0x9

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_IDP_STRING_00:Ljava/lang/String; = "00"

.field private static final NANP_IDP_STRING_001:Ljava/lang/String; = "001"

.field private static final NANP_IDP_STRING_001010:Ljava/lang/String; = "001010"

.field private static final NANP_IDP_STRING_005:Ljava/lang/String; = "005"

.field private static final NANP_IDP_STRING_00700:Ljava/lang/String; = "00700"

.field private static final NANP_IDP_STRING_011:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PAUSE:I = 0x5

.field private static final NANP_STATE_PLUS:I = 0x2

.field private static final NANP_STATE_WAIT:I = 0x6

.field public static final OTA_COUNTRY_MCC_KEY:Ljava/lang/String; = "otaCountryMccKey"

.field private static final OTA_COUNTRY_URI:Landroid/net/Uri;

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field private static final REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

.field public static final RIGHT_BRACKET:Ljava/lang/String; = ")"

.field public static final SPACE:Ljava/lang/String; = " "

.field public static final SQUARE:Ljava/lang/String; = "^"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'

.field public static isAssistedDialingNumber:Z

.field private static isCDMARegistered:Z

.field private static isGSMRegistered:Z

.field private static isNANPCountry:Z

.field private static isNBPCDSupported:Z

.field private static isNetRoaming:Z

.field private static isOTANANPCountry:Z

.field private static isOTANBPCDSupported:Z

.field private static mCursor:Landroid/database/Cursor;

.field private static mCursorContry:Landroid/database/Cursor;

.field private static mPlaceEmergencyCallInAirplanemode:Z

.field private static numberLength:I

.field private static otaCountryCountryCode:Ljava/lang/String;

.field private static otaCountryIDDPrefix:Ljava/lang/String;

.field private static otaCountryMCC:Ljava/lang/String;

.field private static otaCountryNDDPrefix:Ljava/lang/String;

.field private static otaCountryName:Ljava/lang/String;

.field private static phoneType:I

.field private static refCountryAreaCode:Ljava/lang/String;

.field private static refCountryCountryCode:Ljava/lang/String;

.field private static refCountryIDDPrefix:Ljava/lang/String;

.field private static refCountryMCC:Ljava/lang/String;

.field private static refCountryNDDPrefix:Ljava/lang/String;

.field private static refCountryName:Ljava/lang/String;

.field private static refCountryNationalNumberLength:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x37

    const/4 v2, 0x0

    .line 171
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    .line 172
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    .line 173
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    .line 174
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    .line 175
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    .line 176
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    .line 177
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    .line 179
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    .line 181
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 182
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 185
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    .line 186
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 187
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 188
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    .line 189
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    .line 190
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    .line 191
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isOTANBPCDSupported:Z

    .line 192
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    .line 194
    sput v2, Landroid/telephony/PhoneNumberUtils;->phoneType:I

    .line 195
    sput v2, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    .line 197
    const-string v0, "content://assisteddialing/refcountry"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    .line 198
    const-string v0, "content://assisteddialing/mcc_otalookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    .line 199
    const-string v0, "content://assisteddialing/ota_country"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->OTA_COUNTRY_URI:Landroid/net/Uri;

    .line 204
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 205
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    .line 217
    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->mPlaceEmergencyCallInAirplanemode:Z

    .line 224
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 1527
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "US"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 2309
    const-string/jumbo v0, "persist.env.c.phone.matchnum"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->MIN_MATCH:I

    .line 3470
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 3472
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 3473
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 3475
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 3476
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 3478
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3479
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3481
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3482
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3484
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3485
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3487
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3488
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3490
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3491
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x54

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3493
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3494
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 4199
    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_2ba

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 4211
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    return-void

    .line 4199
    :array_2ba
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4234
    return-void
.end method

.method public static DocomoNetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1389
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1390
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method private static DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .registers 20
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z

    .prologue
    .line 1464
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    .line 1465
    .local v9, "numberLenReal":I
    move v8, v9

    .line 1466
    .local v8, "numberLenEffective":I
    const/16 v15, 0x2b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3a

    const/4 v4, 0x1

    .line 1467
    .local v4, "hasPlus":Z
    :goto_14
    const/16 v15, 0x23

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3c

    const/4 v5, 0x1

    .line 1468
    .local v5, "hasSharp":Z
    :goto_23
    const/16 v15, 0x2a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3e

    const/4 v6, 0x1

    .line 1470
    .local v6, "hasStar":Z
    :goto_32
    if-eqz v4, :cond_36

    add-int/lit8 v8, v8, -0x1

    .line 1472
    :cond_36
    if-nez v8, :cond_40

    const/4 v12, 0x0

    .line 1505
    :goto_39
    return-object v12

    .line 1466
    .end local v4    # "hasPlus":Z
    .end local v5    # "hasSharp":Z
    .end local v6    # "hasStar":Z
    :cond_3a
    const/4 v4, 0x0

    goto :goto_14

    .line 1467
    .restart local v4    # "hasPlus":Z
    :cond_3c
    const/4 v5, 0x0

    goto :goto_23

    .line 1468
    .restart local v5    # "hasSharp":Z
    :cond_3e
    const/4 v6, 0x0

    goto :goto_32

    .line 1474
    .restart local v6    # "hasStar":Z
    :cond_40
    add-int/lit8 v15, v8, 0x1

    div-int/lit8 v13, v15, 0x2

    .line 1475
    .local v13, "resultLen":I
    const/4 v3, 0x1

    .line 1476
    .local v3, "extraBytes":I
    if-eqz p1, :cond_49

    add-int/lit8 v3, v3, 0x1

    .line 1477
    :cond_49
    add-int/2addr v13, v3

    .line 1479
    new-array v12, v13, [B

    .line 1481
    .local v12, "result":[B
    const/4 v2, 0x0

    .line 1482
    .local v2, "digitCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4e
    if-ge v7, v9, :cond_86

    .line 1483
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1484
    .local v1, "c":C
    const/16 v15, 0x2b

    if-ne v1, v15, :cond_5d

    .line 1482
    :goto_5a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    .line 1485
    :cond_5d
    and-int/lit8 v15, v2, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_84

    const/4 v14, 0x4

    .line 1486
    .local v14, "shift":I
    :goto_66
    shr-int/lit8 v15, v2, 0x1

    add-int/2addr v15, v3

    aget-byte v16, v12, v15

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v17

    and-int/lit8 v17, v17, 0xf

    shl-int v17, v17, v14

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    or-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v12, v15

    .line 1487
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 1485
    .end local v14    # "shift":I
    :cond_84
    const/4 v14, 0x0

    goto :goto_66

    .line 1491
    .end local v1    # "c":C
    :cond_86
    and-int/lit8 v15, v2, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a0

    shr-int/lit8 v15, v2, 0x1

    add-int/2addr v15, v3

    aget-byte v16, v12, v15

    move/from16 v0, v16

    or-int/lit16 v0, v0, 0xf0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v12, v15

    .line 1493
    :cond_a0
    const/4 v10, 0x0

    .line 1494
    .local v10, "offset":I
    if-eqz p1, :cond_ab

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "offset":I
    .local v11, "offset":I
    add-int/lit8 v15, v13, -0x1

    int-to-byte v15, v15

    aput-byte v15, v12, v10

    move v10, v11

    .line 1495
    .end local v11    # "offset":I
    .restart local v10    # "offset":I
    :cond_ab
    if-eqz v4, :cond_d7

    const/16 v15, 0x91

    :goto_af
    int-to-byte v15, v15

    aput-byte v15, v12, v10

    .line 1498
    if-nez v5, :cond_b6

    if-eqz v6, :cond_bd

    .line 1499
    :cond_b6
    aget-byte v15, v12, v10

    and-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    aput-byte v15, v12, v10

    .line 1503
    :cond_bd
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TOA: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-byte v16, v12, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_39

    .line 1495
    :cond_d7
    const/16 v15, 0x81

    goto :goto_af
.end method

.method public static IsPlaceEmergencyCallInAirplanemode()Z
    .registers 3

    .prologue
    .line 5791
    const-string v0, "PhoneNumberUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPlaceEmergencyCallInAirplanemode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/telephony/PhoneNumberUtils;->mPlaceEmergencyCallInAirplanemode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5792
    sget-boolean v0, Landroid/telephony/PhoneNumberUtils;->mPlaceEmergencyCallInAirplanemode:Z

    return v0
.end method

.method private static KorMsgbcdToChar(B)C
    .registers 2
    .param p0, "b"    # B

    .prologue
    .line 1311
    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    .line 1312
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1319
    :goto_7
    return v0

    .line 1313
    :cond_8
    packed-switch p0, :pswitch_data_1c

    .line 1319
    const/4 v0, 0x0

    goto :goto_7

    .line 1314
    :pswitch_d
    const/16 v0, 0x2a

    goto :goto_7

    .line 1315
    :pswitch_10
    const/16 v0, 0x23

    goto :goto_7

    .line 1316
    :pswitch_13
    const/16 v0, 0x61

    goto :goto_7

    .line 1317
    :pswitch_16
    const/16 v0, 0x62

    goto :goto_7

    .line 1318
    :pswitch_19
    const/16 v0, 0x63

    goto :goto_7

    .line 1313
    :pswitch_data_1c
    .packed-switch 0xa
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method

.method public static SetPlaceEmergencyCallInAirplanemode(Z)V
    .registers 1
    .param p0, "flag"    # Z

    .prologue
    .line 5783
    sput-boolean p0, Landroid/telephony/PhoneNumberUtils;->mPlaceEmergencyCallInAirplanemode:Z

    .line 5785
    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "dialableIndex"    # I
    .param p1, "origStr"    # Ljava/lang/String;
    .param p2, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 4059
    const/4 v3, 0x1

    if-ne p0, v3, :cond_16

    .line 4060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4061
    .local v1, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4062
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4069
    .end local v1    # "ret":Ljava/lang/StringBuilder;
    .local v2, "retStr":Ljava/lang/String;
    :goto_15
    return-object v2

    .line 4066
    .end local v2    # "retStr":Ljava/lang/String;
    :cond_16
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4067
    .local v0, "nonDigitStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "retStr":Ljava/lang/String;
    goto :goto_15
.end method

.method public static assistedDialFromContactList(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 30
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4664
    :try_start_0
    const-string v5, "PhoneNumberUtils"

    const-string v6, "Called assistedDialFromContactList : "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4665
    if-eqz p0, :cond_f

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 4666
    :cond_f
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5201
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :cond_12
    :goto_12
    return-object p0

    .line 4670
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_13
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4671
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4673
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 4674
    .local v11, "ch":C
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    if-nez v5, :cond_2c

    const/16 v5, 0x2b

    if-ne v5, v11, :cond_6b

    .line 4676
    :cond_2c
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Assisted Dialing PhoneNumber is OK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4685
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_87

    .line 4687
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    goto :goto_12

    .line 5198
    .end local v11    # "ch":C
    :catch_4e
    move-exception v12

    .line 5199
    .local v12, "e":Ljava/lang/Exception;
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot assist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5200
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto :goto_12

    .line 4680
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v11    # "ch":C
    :cond_6b
    :try_start_6b
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Assisted Dialing PhoneNumber is FAILED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4681
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto :goto_12

    .line 4692
    :cond_87
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4694
    .local v18, "newPhoneNumber":Ljava/lang/StringBuilder;
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    .line 4695
    .local v26, "numberBeginsWithRefCountryNDDPrefix":Z
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    .line 4696
    .local v25, "numberBeginsWithRefCountryIDDPrefix":Z
    const-string v5, "011"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_199

    const/16 v22, 0x1

    .line 4697
    .local v22, "numberBeginsWithNonUSIDDPrefix":Z
    :goto_ac
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    .line 4698
    .local v23, "numberBeginsWithOTAIDDPrefix":Z
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    .line 4701
    .local v24, "numberBeginsWithOTANDDPrefix":Z
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 4703
    .local v10, "c":C
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    if-eqz v5, :cond_5ff

    .line 4706
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 4708
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-nez v5, :cond_267

    .line 4711
    if-eqz v22, :cond_1ca

    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_1ca

    const/16 v5, 0x31

    if-eq v5, v10, :cond_1ca

    .line 4713
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    add-int/lit8 v13, v5, -0xa

    .line 4714
    .local v13, "extralength":I
    const/16 v16, 0x0

    .line 4715
    .local v16, "match":Z
    const/4 v14, 0x0

    .line 4716
    .local v14, "findIDDLen":I
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v6, 0xc

    if-lt v5, v6, :cond_179

    .line 4722
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4725
    .local v2, "iddcr":Landroid/content/ContentResolver;
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sput-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    .line 4726
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4728
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4730
    .local v3, "ContryCode":Landroid/content/ContentResolver;
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sput-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    .line 4731
    :goto_10f
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_167

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_167

    .line 4733
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4734
    :goto_120
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    if-eqz v5, :cond_165

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_165

    .line 4736
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    const/4 v8, 0x6

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19d

    .line 4738
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    .line 4739
    const/16 v16, 0x1

    .line 4745
    :cond_165
    if-eqz v16, :cond_1a4

    .line 4752
    :cond_167
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    if-eqz v5, :cond_170

    .line 4754
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4756
    :cond_170
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_179

    .line 4758
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4762
    .end local v2    # "iddcr":Landroid/content/ContentResolver;
    .end local v3    # "ContryCode":Landroid/content/ContentResolver;
    :cond_179
    if-nez v16, :cond_1ab

    .line 4766
    const-string v5, "011"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4767
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4769
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing1-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4770
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4771
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4696
    .end local v10    # "c":C
    .end local v13    # "extralength":I
    .end local v14    # "findIDDLen":I
    .end local v16    # "match":Z
    .end local v22    # "numberBeginsWithNonUSIDDPrefix":Z
    .end local v23    # "numberBeginsWithOTAIDDPrefix":Z
    .end local v24    # "numberBeginsWithOTANDDPrefix":Z
    :cond_199
    const/16 v22, 0x0

    goto/16 :goto_ac

    .line 4742
    .restart local v2    # "iddcr":Landroid/content/ContentResolver;
    .restart local v3    # "ContryCode":Landroid/content/ContentResolver;
    .restart local v10    # "c":C
    .restart local v13    # "extralength":I
    .restart local v14    # "findIDDLen":I
    .restart local v16    # "match":Z
    .restart local v22    # "numberBeginsWithNonUSIDDPrefix":Z
    .restart local v23    # "numberBeginsWithOTAIDDPrefix":Z
    .restart local v24    # "numberBeginsWithOTANDDPrefix":Z
    :cond_19d
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_120

    .line 4749
    :cond_1a4
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_10f

    .line 4775
    .end local v2    # "iddcr":Landroid/content/ContentResolver;
    .end local v3    # "ContryCode":Landroid/content/ContentResolver;
    :cond_1ab
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4776
    const/4 v5, 0x0

    const-string v6, "011"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v14, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4778
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing1-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4779
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4780
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4782
    .end local v13    # "extralength":I
    .end local v14    # "findIDDLen":I
    .end local v16    # "match":Z
    :cond_1ca
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_249

    .line 4784
    if-eqz v26, :cond_212

    .line 4786
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_206

    .line 4789
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4790
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4792
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing4-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4793
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4794
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4800
    :cond_206
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing4-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4801
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 4805
    :cond_212
    if-eqz v24, :cond_249

    .line 4807
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_23d

    .line 4810
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4811
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4813
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing4-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4814
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4815
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4821
    :cond_23d
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing4-4] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4822
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 4828
    :cond_249
    if-eqz v25, :cond_4e7

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 4830
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    const-string v6, "011"

    if-ne v5, v6, :cond_4e7

    .line 4833
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing5-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4834
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 4842
    :cond_267
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_362

    .line 4844
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_2df

    .line 4846
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d3

    .line 4848
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_2ae

    .line 4851
    const-string v5, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4852
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4853
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4855
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing2-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4856
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4857
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4862
    :cond_2ae
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4863
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4864
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4866
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing2-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4868
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4875
    :cond_2d3
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing2-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4876
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 4880
    :cond_2df
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_362

    .line 4882
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_356

    .line 4884
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_32a

    .line 4887
    const-string v5, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4888
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4889
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4890
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4892
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing3-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4893
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4894
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4899
    :cond_32a
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4900
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4901
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4902
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4904
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing3-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4905
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4906
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4913
    :cond_356
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing3-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4914
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 4920
    :cond_362
    const/4 v15, 0x0

    .local v15, "iddPrefix":Ljava/lang/String;
    const/16 v19, 0x0

    .line 4921
    .local v19, "numberAfterIDDPrefix":Ljava/lang/String;
    if-nez v25, :cond_369

    if-eqz v23, :cond_451

    .line 4923
    :cond_369
    const/4 v5, 0x1

    move/from16 v0, v25

    if-ne v5, v0, :cond_3b8

    .line 4925
    sget-object v15, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    .line 4926
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 4935
    :goto_380
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f5

    .line 4937
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_3cb

    .line 4940
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4941
    const/4 v5, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const-string v7, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4943
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4944
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4945
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4930
    :cond_3b8
    sget-object v15, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 4931
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    goto :goto_380

    .line 4950
    :cond_3cb
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4951
    const/4 v5, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4953
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4954
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4955
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4960
    :cond_3f5
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_41c

    .line 4963
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4964
    const/4 v5, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4966
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4967
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4968
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4972
    :cond_41c
    if-eqz v25, :cond_443

    .line 4975
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4976
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4978
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-4] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4979
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 4980
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 4982
    :cond_443
    if-eqz v23, :cond_4e7

    .line 4986
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing6-5] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4987
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 4995
    :cond_451
    if-nez v26, :cond_455

    if-eqz v24, :cond_4e7

    :cond_455
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_4e7

    .line 4998
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4db

    .line 5000
    const/16 v17, 0x0

    .line 5001
    .local v17, "nddPrefix":Ljava/lang/String;
    const/4 v5, 0x1

    move/from16 v0, v26

    if-ne v5, v0, :cond_4a0

    .line 5003
    sget-object v17, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    .line 5009
    :goto_479
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v5, :cond_4a3

    .line 5012
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5013
    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5015
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing7-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5016
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5017
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5007
    :cond_4a0
    sget-object v17, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    goto :goto_479

    .line 5022
    :cond_4a3
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    .line 5023
    .local v27, "temp":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5024
    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v6, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5026
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing7-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5027
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5028
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5035
    .end local v17    # "nddPrefix":Ljava/lang/String;
    .end local v27    # "temp":Ljava/lang/String;
    :cond_4db
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing7-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5036
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 5045
    .end local v15    # "iddPrefix":Ljava/lang/String;
    .end local v19    # "numberAfterIDDPrefix":Ljava/lang/String;
    :cond_4e7
    const/16 v5, 0x2b

    if-ne v5, v10, :cond_5ff

    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-nez v5, :cond_5ff

    .line 5047
    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 5048
    .local v20, "numberAfterPlus":Ljava/lang/String;
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    .line 5050
    .local v21, "numberAfterPlusContainsOTACountryCode":Z
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-eqz v5, :cond_54f

    .line 5053
    if-eqz v21, :cond_52f

    .line 5055
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5056
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5058
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing8-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5059
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5060
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5064
    :cond_52f
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5065
    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5067
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing8-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5069
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5075
    :cond_54f
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xb

    if-lt v5, v6, :cond_5ff

    .line 5077
    const/16 v5, 0xb

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_576

    const/16 v5, 0x31

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_576

    .line 5081
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing9-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5082
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 5086
    :cond_576
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 5088
    .local v4, "pluscr":Landroid/content/ContentResolver;
    const/16 v16, 0x0

    .line 5089
    .restart local v16    # "match":Z
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sput-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    .line 5090
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5094
    :goto_58d
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_5aa

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_5aa

    .line 5096
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5bc

    .line 5098
    const/16 v16, 0x1

    .line 5104
    :cond_5aa
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_5b0

    if-nez v16, :cond_5c2

    .line 5108
    :cond_5b0
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing9-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5109
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto/16 :goto_12

    .line 5101
    :cond_5bc
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_58d

    .line 5112
    :cond_5c2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x6

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_5ff

    .line 5114
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 5116
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5117
    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5119
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing9-3] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5120
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5121
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5128
    .end local v4    # "pluscr":Landroid/content/ContentResolver;
    .end local v16    # "match":Z
    .end local v20    # "numberAfterPlus":Ljava/lang/String;
    .end local v21    # "numberAfterPlusContainsOTACountryCode":Z
    :cond_5ff
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    if-eqz v5, :cond_719

    .line 5130
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    if-eqz v5, :cond_6f3

    .line 5132
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_67f

    .line 5134
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_642

    .line 5137
    const-string v5, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5138
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5139
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5141
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing10-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5142
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5143
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5145
    :cond_642
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_719

    .line 5147
    const-string v5, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5148
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5149
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5150
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5152
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing10-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5153
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5154
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5159
    :cond_67f
    if-eqz v25, :cond_6a6

    .line 5162
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5163
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5165
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing11-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5166
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5167
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5169
    :cond_6a6
    if-eqz v26, :cond_719

    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_719

    .line 5171
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    .line 5172
    .restart local v27    # "temp":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5173
    const/4 v5, 0x0

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v6, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5175
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing11-2] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5176
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5177
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5180
    .end local v27    # "temp":Ljava/lang/String;
    :cond_6f3
    const-string v5, "+011"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_719

    .line 5181
    const-string v5, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5182
    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5183
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5184
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5189
    :cond_719
    const-string v5, "PhoneNumberUtils"

    const-string v6, "[AssistDialing13-1] "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5190
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5192
    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    if-eqz v5, :cond_12

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 5194
    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z
    :try_end_736
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_736} :catch_4e

    goto/16 :goto_12
.end method

.method public static assistedDialFromDialPad(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 17
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5328
    :try_start_0
    const-string v12, "PhoneNumberUtils"

    const-string v13, "Called assistedDialFromDialPad : "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5330
    if-eqz p0, :cond_f

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 5331
    :cond_f
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5505
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :goto_12
    return-object p0

    .line 5335
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_13
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5336
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5338
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5339
    .local v1, "ch":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v12

    if-nez v12, :cond_2a

    const/16 v12, 0x2b

    if-ne v12, v1, :cond_69

    .line 5341
    :cond_2a
    const-string v12, "PhoneNumberUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Assisted Dialing PhoneNumber is OK: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5350
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_85

    .line 5352
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c

    goto :goto_12

    .line 5502
    .end local v1    # "ch":C
    :catch_4c
    move-exception v2

    .line 5503
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "PhoneNumberUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot assist: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5504
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto :goto_12

    .line 5345
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "ch":C
    :cond_69
    :try_start_69
    const-string v12, "PhoneNumberUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Assisted Dialing PhoneNumber is FAILED: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5346
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto :goto_12

    .line 5357
    :cond_85
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v12, 0x80

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5359
    .local v5, "newPhoneNumber":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "assisted_dialing"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_ec

    const/4 v3, 0x1

    .line 5360
    .local v3, "enableAssistedDialing":Z
    :goto_9b
    if-eqz v3, :cond_ee

    sget-object v12, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_ee

    const/4 v11, 0x1

    .line 5361
    .local v11, "numberBeginsWithRefCountryIDDPrefixWithAdEnabled":Z
    :goto_a6
    sget-object v12, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    .line 5363
    .local v10, "numberBeginsWithOTAIDDPrefix":Z
    sget-boolean v12, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    if-eqz v12, :cond_20d

    .line 5365
    sget-boolean v12, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-nez v12, :cond_f2

    .line 5368
    const-string v12, "011"

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_f0

    const/4 v9, 0x1

    .line 5369
    .local v9, "numberBeginsWithNonUSIDDPrefix":Z
    :goto_bd
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 5370
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v12

    if-eqz v12, :cond_20d

    .line 5372
    if-eqz v9, :cond_20d

    sget v12, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v13, 0xb

    if-lt v12, v13, :cond_20d

    const/16 v12, 0x31

    if-eq v12, v0, :cond_20d

    .line 5374
    const-string v12, "011"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5375
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5377
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingA-1] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5378
    const/4 v12, 0x1

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5379
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5359
    .end local v0    # "c":C
    .end local v3    # "enableAssistedDialing":Z
    .end local v9    # "numberBeginsWithNonUSIDDPrefix":Z
    .end local v10    # "numberBeginsWithOTAIDDPrefix":Z
    .end local v11    # "numberBeginsWithRefCountryIDDPrefixWithAdEnabled":Z
    :cond_ec
    const/4 v3, 0x0

    goto :goto_9b

    .line 5360
    .restart local v3    # "enableAssistedDialing":Z
    :cond_ee
    const/4 v11, 0x0

    goto :goto_a6

    .line 5368
    .restart local v10    # "numberBeginsWithOTAIDDPrefix":Z
    .restart local v11    # "numberBeginsWithRefCountryIDDPrefixWithAdEnabled":Z
    :cond_f0
    const/4 v9, 0x0

    goto :goto_bd

    .line 5386
    :cond_f2
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 5387
    .restart local v0    # "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v12

    if-nez v12, :cond_101

    const/16 v12, 0x2b

    if-ne v12, v0, :cond_20d

    .line 5389
    :cond_101
    sget v12, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v13, 0xb

    if-lt v12, v13, :cond_20d

    sget v12, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v13, 0xb

    if-ne v12, v13, :cond_111

    const/16 v12, 0x31

    if-eq v12, v0, :cond_20d

    .line 5391
    :cond_111
    const/4 v4, 0x0

    .local v4, "iddPrefix":Ljava/lang/String;
    const/4 v6, 0x0

    .line 5392
    .local v6, "numberAfterIDDPrefix":Ljava/lang/String;
    if-nez v11, :cond_117

    if-eqz v10, :cond_12a

    .line 5394
    :cond_117
    const/4 v12, 0x1

    if-ne v12, v11, :cond_164

    .line 5396
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    .line 5397
    sget-object v12, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 5406
    :cond_12a
    :goto_12a
    const/16 v12, 0x2b

    if-ne v12, v0, :cond_18f

    sget-boolean v12, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-nez v12, :cond_18f

    .line 5408
    const/4 v12, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 5409
    .local v7, "numberAfterPlus":Ljava/lang/String;
    sget-object v12, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 5410
    .local v8, "numberAfterPlusContainsOTACountryCode":Z
    if-eqz v8, :cond_175

    .line 5413
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5414
    const/4 v12, 0x0

    sget-object v13, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v12, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5416
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingB-2] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5417
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5418
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5401
    .end local v7    # "numberAfterPlus":Ljava/lang/String;
    .end local v8    # "numberAfterPlusContainsOTACountryCode":Z
    :cond_164
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 5402
    sget-object v12, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_12a

    .line 5423
    .restart local v7    # "numberAfterPlus":Ljava/lang/String;
    .restart local v8    # "numberAfterPlusContainsOTACountryCode":Z
    :cond_175
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5424
    const/4 v12, 0x0

    const/4 v13, 0x1

    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v12, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5426
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingB-3] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5427
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5428
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5431
    .end local v7    # "numberAfterPlus":Ljava/lang/String;
    .end local v8    # "numberAfterPlusContainsOTACountryCode":Z
    :cond_18f
    if-nez v11, :cond_193

    if-eqz v10, :cond_20d

    .line 5433
    :cond_193
    sget-object v12, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1f3

    .line 5435
    sget-boolean v12, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-eqz v12, :cond_1c9

    .line 5438
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5439
    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    const-string v14, "+"

    invoke-virtual {v5, v12, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5441
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingC-1] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5442
    if-eqz v10, :cond_1c5

    .line 5443
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5446
    :goto_1bf
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5445
    :cond_1c5
    const/4 v12, 0x1

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto :goto_1bf

    .line 5452
    :cond_1c9
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5453
    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v12, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5455
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingC-2] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5456
    if-eqz v10, :cond_1ef

    .line 5457
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5460
    :goto_1e9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5459
    :cond_1ef
    const/4 v12, 0x1

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    goto :goto_1e9

    .line 5463
    :cond_1f3
    if-eqz v11, :cond_20d

    .line 5466
    sget-object v12, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5467
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5469
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingC-3] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5470
    const/4 v12, 0x1

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5471
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5479
    .end local v0    # "c":C
    .end local v4    # "iddPrefix":Ljava/lang/String;
    .end local v6    # "numberAfterIDDPrefix":Ljava/lang/String;
    :cond_20d
    sget-boolean v12, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    if-eqz v12, :cond_24b

    .line 5480
    if-eqz v11, :cond_22b

    .line 5482
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5483
    const/4 v12, 0x0

    sget-object v13, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const-string v14, "+"

    invoke-virtual {v5, v12, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5484
    const/4 v12, 0x1

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5485
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5486
    :cond_22b
    if-eqz v3, :cond_24b

    const-string v12, "+011"

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_24b

    .line 5487
    const-string v12, "+"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5488
    const/4 v12, 0x4

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5489
    const/4 v12, 0x1

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 5490
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_12

    .line 5496
    :cond_24b
    const-string v12, "PhoneNumberUtils"

    const-string v13, "[AssistDialingD-1] "

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5499
    const/4 v12, 0x0

    sput-boolean v12, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z
    :try_end_255
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_255} :catch_4c

    goto/16 :goto_12
.end method

.method private static bcdToChar(B)C
    .registers 2
    .param p0, "b"    # B

    .prologue
    .line 1279
    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    .line 1280
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1287
    :goto_7
    return v0

    .line 1281
    :cond_8
    packed-switch p0, :pswitch_data_1a

    .line 1287
    const/4 v0, 0x0

    goto :goto_7

    .line 1282
    :pswitch_d
    const/16 v0, 0x2a

    goto :goto_7

    .line 1283
    :pswitch_10
    const/16 v0, 0x23

    goto :goto_7

    .line 1284
    :pswitch_13
    const/16 v0, 0x2c

    goto :goto_7

    .line 1285
    :pswitch_16
    const/16 v0, 0x4e

    goto :goto_7

    .line 1281
    nop

    :pswitch_data_1a
    .packed-switch 0xa
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1271
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 1273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .registers 15
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 1117
    const/4 v2, 0x0

    .line 1118
    .local v2, "prependPlus":Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1120
    .local v3, "ret":Ljava/lang/StringBuilder;
    if-ge p2, v7, :cond_14

    .line 1121
    const-string v5, ""

    .line 1212
    :goto_13
    return-object v5

    .line 1125
    :cond_14
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_1d

    .line 1126
    const/4 v2, 0x1

    .line 1129
    :cond_1d
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, p2, -0x1

    invoke-static {v3, p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 1132
    if-eqz v2, :cond_2f

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2f

    .line 1134
    const-string v5, ""

    goto :goto_13

    .line 1137
    :cond_2f
    if-eqz v2, :cond_77

    .line 1163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1164
    .local v4, "retString":Ljava/lang/String;
    const-string v5, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1165
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1166
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 1167
    const-string v5, ""

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 1171
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "retString":Ljava/lang/String;
    :cond_77
    :goto_77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    .line 1181
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    .restart local v1    # "p":Ljava/util/regex/Pattern;
    .restart local v4    # "retString":Ljava/lang/String;
    :cond_7c
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1182
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 1190
    :cond_aa
    const-string v5, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1191
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1192
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 1197
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1198
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 1205
    :cond_e1
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1206
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1207
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 3532
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 3533
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 3535
    const-string v2, "gsm.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3536
    .local v0, "currIso":Ljava/lang/String;
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3537
    .local v1, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 3538
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 3544
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_3f
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3552
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 3553
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 3555
    const-string v2, "gsm.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3556
    .local v0, "currIso":Ljava/lang/String;
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3557
    .local v1, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 3558
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3, p1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 3564
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_3f
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .registers 11
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I

    .prologue
    const/4 v7, 0x1

    .line 3618
    move-object v3, p0

    .line 3621
    .local v3, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_49

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_49

    .line 3625
    if-ne p1, p2, :cond_61

    if-ne p1, v7, :cond_61

    .line 3627
    const/4 v2, 0x0

    .line 3628
    .local v2, "postDialStr":Ljava/lang/String;
    move-object v4, p0

    .line 3631
    .local v4, "tempDialStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3638
    :cond_14
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3640
    .local v1, "networkDialStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3643
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 3644
    if-nez v3, :cond_4b

    .line 3645
    move-object v3, v1

    .line 3656
    :goto_25
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3657
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 3658
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 3661
    .local v0, "dialableIndex":I
    if-lt v0, v7, :cond_56

    .line 3662
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3665
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3677
    .end local v0    # "dialableIndex":I
    :cond_3d
    :goto_3d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .end local v1    # "networkDialStr":Ljava/lang/String;
    .end local v2    # "postDialStr":Ljava/lang/String;
    .end local v4    # "tempDialStr":Ljava/lang/String;
    :cond_49
    :goto_49
    move-object p0, v3

    .line 3685
    .end local p0    # "dialStr":Ljava/lang/String;
    :goto_4a
    return-object p0

    .line 3647
    .restart local v1    # "networkDialStr":Ljava/lang/String;
    .restart local v2    # "postDialStr":Ljava/lang/String;
    .restart local v4    # "tempDialStr":Ljava/lang/String;
    .restart local p0    # "dialStr":Ljava/lang/String;
    :cond_4b
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    .line 3653
    :cond_50
    const-string v5, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 3670
    .restart local v0    # "dialableIndex":I
    :cond_56
    if-gez v0, :cond_5a

    .line 3671
    const-string v2, ""

    .line 3673
    :cond_5a
    const-string/jumbo v5, "wrong postDialStr="

    invoke-static {v5, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 3682
    .end local v0    # "dialableIndex":I
    .end local v1    # "networkDialStr":Ljava/lang/String;
    .end local v2    # "postDialStr":Ljava/lang/String;
    .end local v4    # "tempDialStr":Ljava/lang/String;
    :cond_61
    const-string v5, "checkAndProcessPlusCode:non-NANP not supported"

    invoke-static {v5, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;IILandroid/content/Context;)Ljava/lang/String;
    .registers 12
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 3694
    move-object v3, p0

    .line 3697
    .local v3, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_16

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_16

    .line 3702
    if-ne p1, p2, :cond_11

    if-eq p1, v7, :cond_18

    .line 3760
    :cond_11
    const-string v5, "checkAndProcessPlusCode:non-NANP not supported"

    invoke-static {v5, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_16
    move-object p0, v3

    .line 3763
    .end local p0    # "dialStr":Ljava/lang/String;
    :goto_17
    return-object p0

    .line 3705
    .restart local p0    # "dialStr":Ljava/lang/String;
    :cond_18
    const/4 v2, 0x0

    .line 3706
    .local v2, "postDialStr":Ljava/lang/String;
    move-object v4, p0

    .line 3709
    .local v4, "tempDialStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3716
    :cond_1b
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3718
    .local v1, "networkDialStr":Ljava/lang/String;
    invoke-static {v1, p3}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3721
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_56

    .line 3722
    if-nez v3, :cond_51

    .line 3723
    move-object v3, v1

    .line 3734
    :goto_2c
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3735
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 3736
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 3739
    .local v0, "dialableIndex":I
    if-lt v0, v7, :cond_5c

    .line 3740
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3743
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3755
    .end local v0    # "dialableIndex":I
    :cond_44
    :goto_44
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_16

    .line 3725
    :cond_51
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    .line 3731
    :cond_56
    const-string v5, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 3748
    .restart local v0    # "dialableIndex":I
    :cond_5c
    if-gez v0, :cond_60

    .line 3749
    const-string v2, ""

    .line 3751
    :cond_60
    const-string/jumbo v5, "wrong postDialStr="

    invoke-static {v5, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method public static cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 3577
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 3578
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3579
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3580
    .local v0, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 3581
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    .line 3582
    .local v1, "format":I
    invoke-static {p0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 3586
    .end local v0    # "defaultIso":Ljava/lang/String;
    .end local v1    # "format":I
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_2d
    return-object p0
.end method

.method private static charToBCD(C)I
    .registers 4
    .param p0, "c"    # C

    .prologue
    .line 1293
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 1294
    add-int/lit8 v0, p0, -0x30

    .line 1302
    :goto_a
    return v0

    .line 1295
    :cond_b
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_12

    .line 1296
    const/16 v0, 0xa

    goto :goto_a

    .line 1297
    :cond_12
    const/16 v0, 0x23

    if-ne p0, v0, :cond_19

    .line 1298
    const/16 v0, 0xb

    goto :goto_a

    .line 1299
    :cond_19
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_20

    .line 1300
    const/16 v0, 0xc

    goto :goto_a

    .line 1301
    :cond_20
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_27

    .line 1302
    const/16 v0, 0xd

    goto :goto_a

    .line 1304
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkAndAppendPrefix(Landroid/content/Intent;ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "subscription"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    const-string v2, "ip_call"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 285
    .local v1, "isIPPrefix":Z
    if-eqz v1, :cond_49

    if-eqz p2, :cond_49

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge p1, v2, :cond_49

    .line 287
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ip_call_prefix_sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "IPPrefix":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 293
    .end local v0    # "IPPrefix":Ljava/lang/String;
    .end local p2    # "number":Ljava/lang/String;
    :cond_49
    return-object p2
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "forwardIndex"    # I
    .param p2, "backwardIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 4362
    const/4 v0, 0x0

    .line 4363
    .local v0, "trunk_prefix_was_read":Z
    :goto_2
    if-lt p2, p1, :cond_20

    .line 4364
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v2

    if-ltz v2, :cond_15

    .line 4365
    if-eqz v0, :cond_11

    .line 4380
    :goto_10
    return v1

    .line 4371
    :cond_11
    const/4 v0, 0x1

    .line 4377
    :cond_12
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 4373
    :cond_15
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_10

    .line 4380
    :cond_20
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    .line 652
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 654
    .local v0, "useStrict":Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 643
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "useStrictComparation"    # Z

    .prologue
    .line 661
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 682
    const/4 v7, 0x0

    .line 683
    .local v7, "numNonDialableCharsInA":I
    const/4 v8, 0x0

    .line 685
    .local v8, "numNonDialableCharsInB":I
    if-eqz p0, :cond_6

    if-nez p1, :cond_c

    :cond_6
    if-ne p0, p1, :cond_a

    const/4 v11, 0x1

    .line 841
    :goto_9
    return v11

    .line 685
    :cond_a
    const/4 v11, 0x0

    goto :goto_9

    .line 687
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1a

    .line 688
    :cond_18
    const/4 v11, 0x0

    goto :goto_9

    .line 691
    :cond_1a
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 692
    .local v4, "ia":I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    .line 693
    .local v5, "ib":I
    const/4 v6, 0x0

    .line 695
    .local v6, "matched":I
    :cond_23
    :goto_23
    if-ltz v4, :cond_52

    if-ltz v5, :cond_52

    .line 697
    const/4 v10, 0x0

    .line 699
    .local v10, "skipCmp":Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 701
    .local v0, "ca":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v11

    if-nez v11, :cond_37

    .line 702
    add-int/lit8 v4, v4, -0x1

    .line 703
    const/4 v10, 0x1

    .line 704
    add-int/lit8 v7, v7, 0x1

    .line 707
    :cond_37
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 709
    .local v1, "cb":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v11

    if-nez v11, :cond_46

    .line 710
    add-int/lit8 v5, v5, -0x1

    .line 711
    const/4 v10, 0x1

    .line 712
    add-int/lit8 v8, v8, 0x1

    .line 715
    :cond_46
    if-nez v10, :cond_23

    .line 716
    if-eq v1, v0, :cond_98

    const/16 v11, 0x4e

    if-eq v0, v11, :cond_98

    const/16 v11, 0x4e

    if-eq v1, v11, :cond_98

    .line 744
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    .end local v10    # "skipCmp":Z
    :cond_52
    const-string/jumbo v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 746
    .local v9, "salesCode":Ljava/lang/String;
    const-string v11, "CHN"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_81

    const-string v11, "CHU"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_81

    const-string v11, "CHM"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_81

    const-string v11, "CTC"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_81

    const-string v11, "CHC"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ad

    .line 747
    :cond_81
    const/16 v11, 0xb

    if-ge v6, v11, :cond_a2

    .line 748
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v2, v11, v7

    .line 749
    .local v2, "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v3, v11, v8

    .line 752
    .local v3, "effectiveBLen":I
    if-ne v2, v3, :cond_9f

    if-ne v2, v6, :cond_9f

    .line 753
    const/4 v11, 0x1

    goto/16 :goto_9

    .line 719
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    .end local v9    # "salesCode":Ljava/lang/String;
    .restart local v0    # "ca":C
    .restart local v1    # "cb":C
    .restart local v10    # "skipCmp":Z
    :cond_98
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 755
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    .end local v10    # "skipCmp":Z
    .restart local v2    # "effectiveALen":I
    .restart local v3    # "effectiveBLen":I
    .restart local v9    # "salesCode":Ljava/lang/String;
    :cond_9f
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 758
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    :cond_a2
    const/16 v11, 0xb

    if-lt v6, v11, :cond_148

    if-ltz v4, :cond_aa

    if-gez v5, :cond_148

    .line 759
    :cond_aa
    const/4 v11, 0x1

    goto/16 :goto_9

    .line 762
    :cond_ad
    const-string v11, "FET"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_cd

    const-string v11, "TWM"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_cd

    const-string v11, "CWT"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_cd

    const-string v11, "BRI"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f2

    .line 763
    :cond_cd
    const/16 v11, 0x9

    if-ge v6, v11, :cond_e7

    .line 764
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v2, v11, v7

    .line 765
    .restart local v2    # "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v3, v11, v8

    .line 768
    .restart local v3    # "effectiveBLen":I
    if-ne v2, v3, :cond_e4

    if-ne v2, v6, :cond_e4

    .line 769
    const/4 v11, 0x1

    goto/16 :goto_9

    .line 771
    :cond_e4
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 774
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    :cond_e7
    const/16 v11, 0x9

    if-lt v6, v11, :cond_148

    if-ltz v4, :cond_ef

    if-gez v5, :cond_148

    .line 775
    :cond_ef
    const/4 v11, 0x1

    goto/16 :goto_9

    .line 778
    :cond_f2
    const-string v11, "TGY"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11f

    .line 779
    const/16 v11, 0x8

    if-ge v6, v11, :cond_114

    .line 780
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v2, v11, v7

    .line 781
    .restart local v2    # "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v3, v11, v8

    .line 784
    .restart local v3    # "effectiveBLen":I
    if-ne v2, v3, :cond_111

    if-ne v2, v6, :cond_111

    .line 785
    const/4 v11, 0x1

    goto/16 :goto_9

    .line 787
    :cond_111
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 790
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    :cond_114
    const/16 v11, 0x8

    if-lt v6, v11, :cond_148

    if-ltz v4, :cond_11c

    if-gez v5, :cond_148

    .line 791
    :cond_11c
    const/4 v11, 0x1

    goto/16 :goto_9

    .line 794
    :cond_11f
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v11

    if-ge v6, v11, :cond_13b

    .line 795
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v2, v11, v7

    .line 796
    .restart local v2    # "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v3, v11, v8

    .line 801
    .restart local v3    # "effectiveBLen":I
    if-ne v2, v3, :cond_138

    if-ne v2, v6, :cond_138

    .line 802
    const/4 v11, 0x1

    goto/16 :goto_9

    .line 804
    :cond_138
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 808
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    :cond_13b
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v11

    if-lt v6, v11, :cond_148

    if-ltz v4, :cond_145

    if-gez v5, :cond_148

    .line 809
    :cond_145
    const/4 v11, 0x1

    goto/16 :goto_9

    .line 823
    :cond_148
    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_15b

    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_15b

    .line 826
    const/4 v11, 0x1

    goto/16 :goto_9

    .line 829
    :cond_15b
    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_16e

    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_16e

    .line 832
    const/4 v11, 0x1

    goto/16 :goto_9

    .line 835
    :cond_16e
    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_181

    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_181

    .line 838
    const/4 v11, 0x1

    goto/16 :goto_9

    .line 841
    :cond_181
    const/4 v11, 0x0

    goto/16 :goto_9
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 849
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 23
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    .prologue
    .line 857
    if-eqz p0, :cond_4

    if-nez p1, :cond_10

    .line 858
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_d

    const/16 v18, 0x1

    .line 995
    :goto_c
    return v18

    .line 858
    :cond_d
    const/16 v18, 0x0

    goto :goto_c

    .line 859
    :cond_10
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1f

    .line 860
    const/16 v18, 0x0

    goto :goto_c

    .line 863
    :cond_1f
    const/4 v10, 0x0

    .line 864
    .local v10, "forwardIndexA":I
    const/4 v11, 0x0

    .line 866
    .local v11, "forwardIndexB":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v6

    .line 868
    .local v6, "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 870
    .local v7, "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v5, 0x0

    .line 871
    .local v5, "bothHasCountryCallingCode":Z
    const/4 v13, 0x1

    .line 872
    .local v13, "okToIgnorePrefix":Z
    const/16 v16, 0x0

    .line 873
    .local v16, "trunkPrefixIsOmittedA":Z
    const/16 v17, 0x0

    .line 874
    .local v17, "trunkPrefixIsOmittedB":Z
    if-eqz v6, :cond_84

    if-eqz v7, :cond_84

    .line 875
    iget v0, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v18, v0

    iget v0, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_48

    .line 877
    const/16 v18, 0x0

    goto :goto_c

    .line 881
    :cond_48
    const/4 v13, 0x0

    .line 882
    const/4 v5, 0x1

    .line 883
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 884
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 910
    :cond_4e
    :goto_4e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    .line 911
    .local v3, "backwardIndexA":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .line 912
    .local v4, "backwardIndexB":I
    :cond_5a
    :goto_5a
    if-lt v3, v10, :cond_b8

    if-lt v4, v11, :cond_b8

    .line 913
    const/4 v14, 0x0

    .line 914
    .local v14, "skip_compare":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 915
    .local v8, "chA":C
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 916
    .local v9, "chB":C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_74

    .line 917
    add-int/lit8 v3, v3, -0x1

    .line 918
    const/4 v14, 0x1

    .line 920
    :cond_74
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_7d

    .line 921
    add-int/lit8 v4, v4, -0x1

    .line 922
    const/4 v14, 0x1

    .line 925
    :cond_7d
    if-nez v14, :cond_5a

    .line 926
    if-eq v8, v9, :cond_b3

    .line 927
    const/16 v18, 0x0

    goto :goto_c

    .line 885
    .end local v3    # "backwardIndexA":I
    .end local v4    # "backwardIndexB":I
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_84
    if-nez v6, :cond_8a

    if-nez v7, :cond_8a

    .line 888
    const/4 v13, 0x0

    goto :goto_4e

    .line 890
    :cond_8a
    if-eqz v6, :cond_93

    .line 891
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 899
    :cond_8e
    :goto_8e
    if-eqz v7, :cond_a3

    .line 900
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_4e

    .line 893
    :cond_93
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 894
    .local v15, "tmp":I
    if-ltz v15, :cond_8e

    .line 895
    move v10, v15

    .line 896
    const/16 v16, 0x1

    goto :goto_8e

    .line 902
    .end local v15    # "tmp":I
    :cond_a3
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 903
    .restart local v15    # "tmp":I
    if-ltz v15, :cond_4e

    .line 904
    move v11, v15

    .line 905
    const/16 v17, 0x1

    goto :goto_4e

    .line 929
    .end local v15    # "tmp":I
    .restart local v3    # "backwardIndexA":I
    .restart local v4    # "backwardIndexB":I
    .restart local v8    # "chA":C
    .restart local v9    # "chB":C
    .restart local v14    # "skip_compare":Z
    :cond_b3
    add-int/lit8 v3, v3, -0x1

    .line 930
    add-int/lit8 v4, v4, -0x1

    goto :goto_5a

    .line 934
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_b8
    if-eqz v13, :cond_fa

    .line 935
    if-eqz v16, :cond_be

    if-le v10, v3, :cond_c6

    :cond_be
    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_da

    .line 937
    :cond_c6
    if-eqz p2, :cond_d6

    .line 947
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_c

    .line 949
    :cond_d6
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 952
    :cond_da
    if-eqz v17, :cond_de

    if-le v11, v4, :cond_e6

    :cond_de
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_147

    .line 954
    :cond_e6
    if-eqz p2, :cond_f6

    .line 955
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_c

    .line 957
    :cond_f6
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 970
    :cond_fa
    if-nez v5, :cond_11d

    const/4 v12, 0x1

    .line 971
    .local v12, "maybeNamp":Z
    :goto_fd
    if-lt v3, v10, :cond_123

    .line 972
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 973
    .restart local v8    # "chA":C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_11a

    .line 974
    if-eqz v12, :cond_11f

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11f

    .line 975
    const/4 v12, 0x0

    .line 980
    :cond_11a
    add-int/lit8 v3, v3, -0x1

    .line 981
    goto :goto_fd

    .line 970
    .end local v8    # "chA":C
    .end local v12    # "maybeNamp":Z
    :cond_11d
    const/4 v12, 0x0

    goto :goto_fd

    .line 977
    .restart local v8    # "chA":C
    .restart local v12    # "maybeNamp":Z
    :cond_11f
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 982
    .end local v8    # "chA":C
    :cond_123
    :goto_123
    if-lt v4, v11, :cond_147

    .line 983
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 984
    .restart local v9    # "chB":C
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_140

    .line 985
    if-eqz v12, :cond_143

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_143

    .line 986
    const/4 v12, 0x0

    .line 991
    :cond_140
    add-int/lit8 v4, v4, -0x1

    .line 992
    goto :goto_123

    .line 988
    :cond_143
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 995
    .end local v9    # "chB":C
    .end local v12    # "maybeNamp":Z
    :cond_147
    const/16 v18, 0x1

    goto/16 :goto_c
.end method

.method public static convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 3447
    if-nez p0, :cond_3

    .line 3463
    .end local p0    # "input":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object p0

    .line 3450
    .restart local p0    # "input":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3451
    .local v2, "len":I
    if-eqz v2, :cond_2

    .line 3455
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 3457
    .local v3, "out":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_1e

    .line 3458
    aget-char v0, v3, v1

    .line 3460
    .local v0, "c":C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 3457
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3463
    .end local v0    # "c":C
    :cond_1e
    new-instance p0, Ljava/lang/String;

    .end local p0    # "input":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_2
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 548
    if-nez p0, :cond_4

    .line 549
    const/4 v4, 0x0

    .line 564
    :goto_3
    return-object v4

    .line 551
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 552
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 554
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_2b

    .line 555
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 557
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 558
    const/16 v0, 0x2c

    .line 562
    :cond_1c
    :goto_1c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 559
    :cond_22
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 560
    const/16 v0, 0x3b

    goto :goto_1c

    .line 564
    .end local v0    # "c":C
    :cond_2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public static convertSMSDestinationAddress(Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/String;
    .registers 20
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fixedNetwork"    # I

    .prologue
    .line 5575
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    .line 5577
    .local v13, "numberLength":I
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5578
    .local v1, "c":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v14

    if-nez v14, :cond_15

    const/16 v14, 0x2b

    if-ne v14, v1, :cond_34

    .line 5579
    :cond_15
    const-string v14, "PhoneNumberUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SMS Destination Number is OK "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5586
    :try_start_2d
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_101

    move-result v14

    if-nez v14, :cond_4d

    .line 5769
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :goto_33
    return-object p0

    .line 5581
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_34
    const-string v14, "PhoneNumberUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SMS Destination Number might be email address"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 5591
    :cond_4d
    :try_start_4d
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v14, 0x80

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5593
    .local v8, "newPhoneNumber":Ljava/lang/StringBuilder;
    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    .line 5594
    .local v12, "numberBeginsWithOTAIDDPrefix":Z
    const-string v14, "011"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_f4

    const/4 v11, 0x1

    .line 5595
    .local v11, "numberBeginsWithNonUSIDDPrefix":Z
    :goto_67
    const/4 v14, 0x0

    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5597
    .local v2, "debugNumber":Ljava/lang/String;
    const-string v14, "PhoneNumberUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SMS Destination numberLength: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " numberBeginsWithOTAIDDPrefix: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " numberBeginsWithNonUSIDDPrefix: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " otaCountryIDDPrefix: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " number : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "**********"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5604
    packed-switch p2, :pswitch_data_334

    .line 5626
    :goto_ba
    :pswitch_ba
    const/4 v4, 0x0

    .line 5628
    .local v4, "findIDDLen":I
    sget-boolean v14, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    if-eqz v14, :cond_219

    .line 5629
    sget-boolean v14, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-nez v14, :cond_137

    .line 5630
    const-string v14, "PhoneNumberUtils"

    const-string v15, "Address Rule in VZW Network"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5631
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v14

    if-eqz v14, :cond_12d

    .line 5632
    if-eqz v11, :cond_12d

    const/16 v14, 0xb

    if-lt v13, v14, :cond_12d

    const/16 v14, 0xb

    if-ne v13, v14, :cond_de

    const/16 v14, 0x31

    if-eq v14, v1, :cond_12d

    .line 5633
    :cond_de
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_12d

    .line 5634
    const-string v14, "011"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5635
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5636
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_33

    .line 5594
    .end local v2    # "debugNumber":Ljava/lang/String;
    .end local v4    # "findIDDLen":I
    .end local v11    # "numberBeginsWithNonUSIDDPrefix":Z
    :cond_f4
    const/4 v11, 0x0

    goto/16 :goto_67

    .line 5608
    .restart local v2    # "debugNumber":Ljava/lang/String;
    .restart local v11    # "numberBeginsWithNonUSIDDPrefix":Z
    :pswitch_f7
    const/4 v14, 0x1

    sput-boolean v14, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 5609
    const/4 v14, 0x0

    sput-boolean v14, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 5610
    const/4 v14, 0x0

    sput-boolean v14, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_100} :catch_101

    goto :goto_ba

    .line 5767
    .end local v2    # "debugNumber":Ljava/lang/String;
    .end local v8    # "newPhoneNumber":Ljava/lang/StringBuilder;
    .end local v11    # "numberBeginsWithNonUSIDDPrefix":Z
    .end local v12    # "numberBeginsWithOTAIDDPrefix":Z
    :catch_101
    move-exception v3

    .line 5768
    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "PhoneNumberUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot convert: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .line 5613
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "debugNumber":Ljava/lang/String;
    .restart local v8    # "newPhoneNumber":Ljava/lang/StringBuilder;
    .restart local v11    # "numberBeginsWithNonUSIDDPrefix":Z
    .restart local v12    # "numberBeginsWithOTAIDDPrefix":Z
    :pswitch_11c
    const/4 v14, 0x1

    :try_start_11d
    sput-boolean v14, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 5614
    const/4 v14, 0x0

    sput-boolean v14, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 5615
    const/4 v14, 0x1

    sput-boolean v14, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    goto :goto_ba

    .line 5618
    :pswitch_126
    const/4 v14, 0x0

    sput-boolean v14, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 5619
    const/4 v14, 0x1

    sput-boolean v14, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    goto :goto_ba

    .line 5641
    .restart local v4    # "findIDDLen":I
    :cond_12d
    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_33

    .line 5643
    :cond_137
    const-string v14, "PhoneNumberUtils"

    const-string v15, "Address Rule in CDMA Internatinal Roaming"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5644
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v14

    if-nez v14, :cond_148

    const/16 v14, 0x2b

    if-ne v14, v1, :cond_219

    .line 5645
    :cond_148
    const/16 v14, 0xb

    if-lt v13, v14, :cond_219

    const/16 v14, 0xb

    if-ne v13, v14, :cond_154

    const/16 v14, 0x31

    if-eq v14, v1, :cond_219

    .line 5646
    :cond_154
    add-int/lit8 v14, v13, -0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 5647
    .local v7, "nanpStr":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "iddPrefix":Ljava/lang/String;
    const/4 v10, 0x0

    .line 5649
    .local v10, "numberAfterIDDPrefix":Ljava/lang/String;
    if-eqz v12, :cond_172

    .line 5650
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 5651
    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 5654
    :cond_172
    if-eqz v12, :cond_1bf

    .line 5655
    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    .line 5656
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 5658
    .local v9, "newStr":Ljava/lang/String;
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_197

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v15, v4, 0xb

    if-ne v14, v15, :cond_197

    .line 5659
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5669
    :goto_191
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_33

    .line 5660
    :cond_197
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1b2

    .line 5661
    const-string v14, "PhoneNumberUtils"

    const-string v15, "Found Country Code after IDD"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5662
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5663
    const/4 v14, 0x0

    const-string v15, "011"

    invoke-virtual {v8, v14, v4, v15}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_191

    .line 5665
    :cond_1b2
    const-string v14, "PhoneNumberUtils"

    const-string v15, "No Condition"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5666
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_191

    .line 5672
    .end local v9    # "newStr":Ljava/lang/String;
    :cond_1bf
    const/16 v14, 0x2b

    if-ne v14, v1, :cond_203

    sget-boolean v14, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    if-nez v14, :cond_203

    .line 5673
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 5675
    .restart local v9    # "newStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1e5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0xc

    if-ne v14, v15, :cond_1e5

    .line 5676
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5685
    :goto_1df
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_33

    .line 5677
    :cond_1e5
    move-object/from16 v0, p1

    invoke-static {v9, v0}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1f6

    .line 5678
    const-string v14, "011"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5679
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1df

    .line 5681
    :cond_1f6
    const-string v14, "PhoneNumberUtils"

    const-string v15, "1NANP is not matched"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5682
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1df

    .line 5688
    .end local v9    # "newStr":Ljava/lang/String;
    :cond_203
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_219

    .line 5689
    const-string v14, "011"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5690
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5691
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_33

    .line 5698
    .end local v5    # "iddPrefix":Ljava/lang/String;
    .end local v7    # "nanpStr":Ljava/lang/String;
    .end local v10    # "numberAfterIDDPrefix":Ljava/lang/String;
    :cond_219
    sget-boolean v14, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    if-eqz v14, :cond_32b

    .line 5699
    const-string v14, "PhoneNumberUtils"

    const-string v15, "Address Rule in GSM/UMTS"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5701
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v14

    if-nez v14, :cond_22e

    const/16 v14, 0x2b

    if-ne v14, v1, :cond_32b

    .line 5702
    :cond_22e
    const/16 v14, 0xb

    if-lt v13, v14, :cond_32b

    const/16 v14, 0xb

    if-ne v13, v14, :cond_23a

    const/16 v14, 0x31

    if-eq v14, v1, :cond_32b

    .line 5703
    :cond_23a
    add-int/lit8 v14, v13, -0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 5704
    .restart local v7    # "nanpStr":Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "iddPrefix":Ljava/lang/String;
    const/4 v10, 0x0

    .line 5707
    .restart local v10    # "numberAfterIDDPrefix":Ljava/lang/String;
    if-eqz v12, :cond_258

    .line 5708
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 5709
    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 5712
    :cond_258
    if-eqz v12, :cond_2c0

    .line 5715
    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    .line 5716
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 5718
    .restart local v9    # "newStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_28d

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v15, v4, 0xb

    if-ne v14, v15, :cond_28d

    .line 5719
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5720
    const/4 v14, 0x0

    sget-object v15, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const-string v16, "+"

    move-object/from16 v0, v16

    invoke-virtual {v8, v14, v15, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5721
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_33

    .line 5722
    :cond_28d
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_2ae

    .line 5723
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5724
    const/4 v14, 0x0

    sget-object v15, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const-string v16, "011"

    move-object/from16 v0, v16

    invoke-virtual {v8, v14, v15, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5725
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_33

    .line 5727
    :cond_2ae
    const-string v14, "PhoneNumberUtils"

    const-string v15, "No condition is matched in IDD"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5728
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5731
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_33

    .line 5734
    .end local v9    # "newStr":Ljava/lang/String;
    :cond_2c0
    const/16 v14, 0x2b

    if-ne v14, v1, :cond_315

    .line 5735
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 5736
    .local v6, "iddStr":Ljava/lang/String;
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2e4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0xc

    if-ne v14, v15, :cond_2e4

    .line 5738
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5751
    :goto_2de
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_33

    .line 5739
    :cond_2e4
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_2fc

    .line 5741
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 5742
    .restart local v9    # "newStr":Ljava/lang/String;
    const-string v14, "011"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5743
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2de

    .line 5744
    .end local v9    # "newStr":Ljava/lang/String;
    :cond_2fc
    const-string v14, "011"

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_308

    .line 5745
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2de

    .line 5747
    :cond_308
    const-string v14, "PhoneNumberUtils"

    const-string v15, "No condition is matched in \'+\'"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5748
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2de

    .line 5755
    .end local v6    # "iddStr":Ljava/lang/String;
    :cond_315
    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_32b

    .line 5756
    const-string v14, "011"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5757
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5758
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_33

    .line 5764
    .end local v5    # "iddPrefix":Ljava/lang/String;
    .end local v7    # "nanpStr":Ljava/lang/String;
    .end local v10    # "numberAfterIDDPrefix":Ljava/lang/String;
    :cond_32b
    const-string v14, "PhoneNumberUtils"

    const-string v15, "Can\'t find any match in this number"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_332
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_332} :catch_101

    goto/16 :goto_33

    .line 5604
    :pswitch_data_334
    .packed-switch 0x0
        :pswitch_ba
        :pswitch_f7
        :pswitch_11c
        :pswitch_126
    .end packed-switch
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 378
    if-nez p0, :cond_4

    .line 379
    const/4 v6, 0x0

    .line 404
    :goto_3
    return-object v6

    .line 382
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 383
    .local v3, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 385
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v3, :cond_55

    .line 386
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 388
    .local v0, "c":C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 389
    .local v1, "digit":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_23

    .line 390
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 391
    :cond_23
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_45

    .line 393
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_41

    const-string v6, "*31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    const-string v6, "#31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 395
    :cond_41
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 397
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_45
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 398
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 399
    :cond_4f
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 404
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 417
    if-nez p0, :cond_4

    .line 418
    const/4 v5, 0x0

    .line 440
    :goto_3
    return-object v5

    .line 421
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 422
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 423
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 425
    .local v1, "haveSeenPlus":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v3, :cond_2f

    .line 426
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 427
    .local v0, "c":C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1f

    .line 428
    if-eqz v1, :cond_1e

    .line 425
    :cond_1b
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 431
    :cond_1e
    const/4 v1, 0x1

    .line 433
    :cond_1f
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 434
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 435
    :cond_29
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 440
    .end local v0    # "c":C
    :cond_2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static extractNetworkPortionchangePlusCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 449
    if-nez p1, :cond_4

    .line 450
    const/4 v6, 0x0

    .line 481
    :goto_3
    return-object v6

    .line 453
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 454
    .local v4, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 455
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 457
    .local v1, "firstCharAdded":Z
    const/4 v2, 0x0

    .line 459
    .local v2, "firstCharPause":Z
    const/4 v6, 0x0

    .line 461
    .local v6, "tempstrng":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v4, :cond_2c

    .line 462
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 464
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 465
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 466
    :cond_23
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 468
    if-nez v3, :cond_2c

    .line 469
    const/4 v2, 0x1

    .line 476
    .end local v0    # "c":C
    :cond_2c
    if-nez v2, :cond_37

    .line 477
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 478
    invoke-static {p0, v6}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 479
    goto :goto_3

    :cond_37
    move-object v6, p1

    .line 481
    goto :goto_3
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 618
    if-nez p0, :cond_4

    const/4 v5, 0x0

    .line 634
    :goto_3
    return-object v5

    .line 621
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    .local v2, "ret":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 625
    .local v4, "trimIndex":I
    add-int/lit8 v1, v4, 0x1

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 626
    .local v3, "s":I
    :goto_13
    if-ge v1, v3, :cond_25

    .line 628
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 629
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 630
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 626
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 634
    .end local v0    # "c":C
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .registers 4
    .param p0, "postDialStr"    # Ljava/lang/String;

    .prologue
    .line 4043
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 4044
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4045
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4049
    .end local v0    # "c":C
    .end local v1    # "index":I
    :goto_11
    return v1

    .line 4043
    .restart local v0    # "c":C
    .restart local v1    # "index":I
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4049
    .end local v0    # "c":C
    :cond_15
    const/4 v1, -0x1

    goto :goto_11
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .registers 1
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 1792
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1793
    return-void
.end method

.method public static formatKRnpNumber(Landroid/text/Editable;)V
    .registers 14
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 1852
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1855
    .local v3, "length":I
    const/16 v10, 0xe

    if-le v3, v10, :cond_1d

    .line 1857
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "-"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1858
    .local v4, "noFormatNumber":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-interface {p0, v10, v11, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2086
    .end local v4    # "noFormatNumber":Ljava/lang/String;
    :cond_1c
    :goto_1c
    return-void

    .line 1860
    :cond_1d
    const/4 v10, 0x2

    if-lt v3, v10, :cond_1c

    .line 1865
    const/4 v9, 0x5

    .line 1866
    .local v9, "state":I
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1868
    .local v0, "Digits":Ljava/lang/String;
    const/4 v10, 0x6

    if-ge v3, v10, :cond_48

    const-string v10, "-"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_48

    .line 1869
    const/4 v6, 0x0

    .line 1870
    .local v6, "p":I
    :goto_31
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v6, v10, :cond_1c

    .line 1871
    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_45

    .line 1872
    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v6, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_31

    .line 1874
    :cond_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 1881
    .end local v6    # "p":I
    :cond_48
    const/4 v6, 0x0

    .line 1882
    .restart local v6    # "p":I
    :goto_49
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v6, v10, :cond_68

    .line 1883
    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_5f

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2f

    if-ne v10, v11, :cond_65

    .line 1884
    :cond_5f
    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v6, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_49

    .line 1886
    :cond_65
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    .line 1889
    :cond_68
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-eq v3, v10, :cond_72

    .line 1890
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1892
    :cond_72
    const/4 v10, 0x1

    if-lt v3, v10, :cond_1c

    .line 1895
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_bd

    .line 1896
    const/4 v10, 0x2

    if-lt v3, v10, :cond_1c

    .line 1897
    const/4 v10, 0x1

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x32

    if-ne v10, v11, :cond_a5

    .line 1898
    const/4 v9, 0x6

    .line 1939
    :goto_8b
    const/4 v10, 0x0

    invoke-interface {p0, v10, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1941
    .local v8, "saved":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 1942
    :goto_91
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v6, v10, :cond_142

    .line 1943
    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_13e

    .line 1944
    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v6, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_91

    .line 1900
    .end local v8    # "saved":Ljava/lang/CharSequence;
    :cond_a5
    const/4 v10, 0x3

    if-lt v3, v10, :cond_1c

    .line 1901
    const-string v10, "0505"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b8

    const-string v10, "050-5"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_bb

    .line 1902
    :cond_b8
    const/16 v9, 0xe

    goto :goto_8b

    .line 1904
    :cond_bb
    const/4 v9, 0x7

    goto :goto_8b

    .line 1906
    :cond_bd
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2a

    if-ne v10, v11, :cond_f5

    .line 1907
    const/4 v10, 0x4

    if-lt v3, v10, :cond_1c

    .line 1908
    const-string v10, "*23#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e1

    const-string v10, "*22#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e1

    const-string v10, "*31#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e7

    .line 1909
    :cond_e1
    const/4 v10, 0x5

    if-gt v3, v10, :cond_1c

    .line 1910
    const/16 v9, 0xa

    goto :goto_8b

    .line 1911
    :cond_e7
    const-string v10, "*230#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1912
    const/4 v10, 0x6

    if-gt v3, v10, :cond_1c

    .line 1913
    const/16 v9, 0xb

    goto :goto_8b

    .line 1918
    :cond_f5
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x23

    if-ne v10, v11, :cond_120

    .line 1919
    const/4 v10, 0x2

    if-lt v3, v10, :cond_1c

    .line 1920
    const/4 v10, 0x1

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x39

    if-ne v10, v11, :cond_111

    .line 1921
    const/4 v10, 0x3

    if-gt v3, v10, :cond_1c

    .line 1922
    const/16 v9, 0x8

    goto/16 :goto_8b

    .line 1923
    :cond_111
    const-string v10, "#31#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1924
    const/4 v10, 0x5

    if-gt v3, v10, :cond_1c

    .line 1925
    const/16 v9, 0xa

    goto/16 :goto_8b

    .line 1930
    :cond_120
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2b

    if-ne v10, v11, :cond_134

    .line 1931
    const/4 v10, 0x6

    if-lt v3, v10, :cond_1c

    const/16 v10, 0xe

    if-gt v3, v10, :cond_1c

    .line 1932
    const/16 v9, 0x9

    goto/16 :goto_8b

    .line 1934
    :cond_134
    const/4 v10, 0x5

    if-lt v3, v10, :cond_1c

    const/16 v10, 0xe

    if-gt v3, v10, :cond_1c

    .line 1935
    const/4 v9, 0x5

    goto/16 :goto_8b

    .line 1946
    .restart local v8    # "saved":Ljava/lang/CharSequence;
    :cond_13e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_91

    .line 1950
    :cond_142
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1952
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3003003000"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15a

    .line 1953
    const/4 v10, 0x0

    const-string v11, "300-300-3000"

    invoke-interface {p0, v10, v3, v11}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_1c

    .line 1960
    :cond_15a
    const/4 v10, 0x2

    new-array v1, v10, [I

    .line 1961
    .local v1, "dashPositions":[I
    const/4 v5, 0x0

    .line 1964
    .local v5, "numDashes":I
    packed-switch v9, :pswitch_data_26a

    .line 2073
    :pswitch_161
    const/4 v10, 0x0

    invoke-interface {p0, v10, v3, v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_1c

    .line 1966
    :pswitch_167
    const/4 v10, 0x3

    if-gt v3, v10, :cond_186

    .line 1967
    const/4 v5, 0x0

    .line 2078
    :cond_16b
    :goto_16b
    if-eqz v5, :cond_1c

    .line 2079
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16e
    if-ge v2, v5, :cond_1c

    .line 2080
    aget v7, v1, v2

    .line 2081
    .local v7, "pos":I
    add-int v10, v7, v2

    if-ltz v10, :cond_183

    add-int v10, v7, v2

    if-gt v10, v3, :cond_183

    .line 2082
    add-int v10, v7, v2

    add-int v11, v7, v2

    const-string v12, "-"

    invoke-interface {p0, v10, v11, v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2079
    :cond_183
    add-int/lit8 v2, v2, 0x1

    goto :goto_16e

    .line 1969
    .end local v2    # "i":I
    .end local v7    # "pos":I
    :cond_186
    const/4 v10, 0x7

    if-gt v3, v10, :cond_18f

    .line 1970
    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v1, v10

    .line 1971
    const/4 v5, 0x1

    .line 1972
    goto :goto_16b

    .line 1973
    :cond_18f
    const/4 v10, 0x7

    if-le v3, v10, :cond_1a1

    const/16 v10, 0xa

    if-gt v3, v10, :cond_1a1

    .line 1974
    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v1, v10

    .line 1975
    const/4 v10, 0x1

    add-int/lit8 v11, v3, -0x4

    aput v11, v1, v10

    .line 1976
    const/4 v5, 0x2

    .line 1977
    goto :goto_16b

    .line 1978
    :cond_1a1
    const/16 v10, 0xa

    if-le v3, v10, :cond_16b

    .line 1979
    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v1, v10

    .line 1980
    const/4 v10, 0x1

    const/4 v11, 0x7

    aput v11, v1, v10

    .line 1981
    const/4 v5, 0x2

    goto :goto_16b

    .line 1985
    :pswitch_1af
    const/4 v10, 0x4

    if-gt v3, v10, :cond_1b4

    .line 1986
    const/4 v5, 0x0

    .line 1987
    goto :goto_16b

    .line 1988
    :cond_1b4
    const/16 v10, 0x8

    if-gt v3, v10, :cond_1be

    .line 1989
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 1990
    const/4 v5, 0x1

    .line 1991
    goto :goto_16b

    .line 1992
    :cond_1be
    const/16 v10, 0x8

    if-le v3, v10, :cond_1d1

    const/16 v10, 0xb

    if-gt v3, v10, :cond_1d1

    .line 1993
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 1994
    const/4 v10, 0x1

    add-int/lit8 v11, v3, -0x4

    aput v11, v1, v10

    .line 1995
    const/4 v5, 0x2

    .line 1996
    goto :goto_16b

    .line 1997
    :cond_1d1
    const/16 v10, 0xb

    if-le v3, v10, :cond_16b

    .line 1998
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 1999
    const/4 v10, 0x1

    const/16 v11, 0x8

    aput v11, v1, v10

    .line 2000
    const/4 v5, 0x2

    goto :goto_16b

    .line 2004
    :pswitch_1e0
    const/4 v10, 0x2

    if-gt v3, v10, :cond_1e5

    .line 2005
    const/4 v5, 0x0

    .line 2006
    goto :goto_16b

    .line 2007
    :cond_1e5
    const/4 v10, 0x6

    if-gt v3, v10, :cond_1ef

    .line 2008
    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v1, v10

    .line 2009
    const/4 v5, 0x1

    .line 2010
    goto/16 :goto_16b

    .line 2011
    :cond_1ef
    const/4 v10, 0x6

    if-le v3, v10, :cond_202

    const/16 v10, 0x9

    if-gt v3, v10, :cond_202

    .line 2012
    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v1, v10

    .line 2013
    const/4 v10, 0x1

    add-int/lit8 v11, v3, -0x4

    aput v11, v1, v10

    .line 2014
    const/4 v5, 0x2

    .line 2015
    goto/16 :goto_16b

    .line 2016
    :cond_202
    const/16 v10, 0x9

    if-le v3, v10, :cond_16b

    .line 2017
    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v1, v10

    .line 2018
    const/4 v10, 0x1

    const/4 v11, 0x6

    aput v11, v1, v10

    .line 2019
    const/4 v5, 0x2

    goto/16 :goto_16b

    .line 2023
    :pswitch_211
    const/4 v10, 0x2

    if-gt v3, v10, :cond_217

    .line 2024
    const/4 v5, 0x0

    goto/16 :goto_16b

    .line 2026
    :cond_217
    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v1, v10

    .line 2027
    const/4 v5, 0x1

    .line 2029
    goto/16 :goto_16b

    .line 2031
    :pswitch_21e
    const/4 v10, 0x4

    if-gt v3, v10, :cond_224

    .line 2032
    const/4 v5, 0x0

    goto/16 :goto_16b

    .line 2034
    :cond_224
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 2035
    const/4 v5, 0x1

    .line 2037
    goto/16 :goto_16b

    .line 2039
    :pswitch_22b
    const/4 v10, 0x5

    if-gt v3, v10, :cond_231

    .line 2040
    const/4 v5, 0x0

    goto/16 :goto_16b

    .line 2042
    :cond_231
    const/4 v10, 0x0

    const/4 v11, 0x5

    aput v11, v1, v10

    .line 2043
    const/4 v5, 0x1

    .line 2045
    goto/16 :goto_16b

    .line 2047
    :pswitch_238
    const/16 v10, 0x8

    if-gt v3, v10, :cond_244

    .line 2048
    const/4 v10, 0x0

    add-int/lit8 v11, v3, -0x4

    aput v11, v1, v10

    .line 2049
    const/4 v5, 0x1

    .line 2050
    goto/16 :goto_16b

    .line 2051
    :cond_244
    const/16 v10, 0x8

    if-le v3, v10, :cond_16b

    .line 2052
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 2053
    const/4 v5, 0x1

    goto/16 :goto_16b

    .line 2057
    :pswitch_24f
    const/4 v10, 0x3

    if-gt v3, v10, :cond_255

    .line 2058
    const/4 v5, 0x0

    .line 2059
    goto/16 :goto_16b

    .line 2061
    :cond_255
    const/4 v10, 0x7

    if-gt v3, v10, :cond_25f

    .line 2062
    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v1, v10

    .line 2063
    const/4 v5, 0x1

    .line 2064
    goto/16 :goto_16b

    .line 2065
    :cond_25f
    const/4 v10, 0x7

    if-le v3, v10, :cond_16b

    .line 2066
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v1, v10

    .line 2067
    const/4 v5, 0x1

    goto/16 :goto_16b

    .line 1964
    nop

    :pswitch_data_26a
    .packed-switch 0x5
        :pswitch_24f
        :pswitch_1e0
        :pswitch_167
        :pswitch_211
        :pswitch_238
        :pswitch_21e
        :pswitch_22b
        :pswitch_161
        :pswitch_161
        :pswitch_1af
    .end packed-switch
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .registers 15
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 1668
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1669
    .local v4, "length":I
    const-string v11, "+1-nnn-nnn-nnnn"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v4, v11, :cond_d

    .line 1774
    :cond_c
    :goto_c
    return-void

    .line 1672
    :cond_d
    const/4 v11, 0x5

    if-le v4, v11, :cond_c

    .line 1677
    const/4 v11, 0x0

    invoke-interface {p0, v11, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1680
    .local v9, "saved":Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1681
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1686
    const/4 v11, 0x3

    new-array v1, v11, [I

    .line 1687
    .local v1, "dashPositions":[I
    const/4 v5, 0x0

    .line 1689
    .local v5, "numDashes":I
    const/4 v10, 0x1

    .line 1690
    .local v10, "state":I
    const/4 v7, 0x0

    .line 1691
    .local v7, "numDigits":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v6, v5

    .end local v5    # "numDashes":I
    .local v6, "numDashes":I
    :goto_24
    if-ge v2, v4, :cond_72

    .line 1692
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1693
    .local v0, "c":C
    packed-switch v0, :pswitch_data_a4

    .line 1748
    :cond_2d
    :pswitch_2d
    const/4 v11, 0x0

    invoke-interface {p0, v11, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_c

    .line 1695
    :pswitch_32
    if-eqz v7, :cond_37

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3d

    .line 1696
    :cond_37
    const/4 v10, 0x3

    move v5, v6

    .line 1691
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_39
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto :goto_24

    .line 1712
    :cond_3d
    :pswitch_3d
    const/4 v11, 0x2

    if-eq v10, v11, :cond_46

    const/4 v11, 0x5

    if-eq v10, v11, :cond_46

    const/4 v11, 0x6

    if-ne v10, v11, :cond_4b

    .line 1715
    :cond_46
    const/4 v11, 0x0

    invoke-interface {p0, v11, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_c

    .line 1717
    :cond_4b
    const/4 v11, 0x3

    if-ne v10, v11, :cond_56

    .line 1719
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    .line 1724
    :goto_52
    const/4 v10, 0x1

    .line 1725
    add-int/lit8 v7, v7, 0x1

    .line 1726
    goto :goto_39

    .line 1720
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_56
    const/4 v11, 0x4

    if-eq v10, v11, :cond_a2

    const/4 v11, 0x3

    if-eq v7, v11, :cond_5f

    const/4 v11, 0x6

    if-ne v7, v11, :cond_a2

    .line 1722
    :cond_5f
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    goto :goto_52

    .line 1729
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_64
    const/4 v10, 0x4

    move v5, v6

    .line 1730
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_39

    .line 1733
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_67
    const/4 v10, 0x5

    move v5, v6

    .line 1734
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_39

    .line 1736
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_6a
    const/4 v10, 0x6

    move v5, v6

    .line 1737
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_39

    .line 1740
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_6d
    if-nez v2, :cond_2d

    .line 1742
    const/4 v10, 0x2

    move v5, v6

    .line 1743
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_39

    .line 1753
    .end local v0    # "c":C
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_72
    const/4 v11, 0x7

    if-ne v7, v11, :cond_a0

    .line 1755
    add-int/lit8 v5, v6, -0x1

    .line 1759
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_77
    const/4 v2, 0x0

    :goto_78
    if-ge v2, v5, :cond_88

    .line 1760
    aget v8, v1, v2

    .line 1761
    .local v8, "pos":I
    add-int v11, v8, v2

    add-int v12, v8, v2

    const-string v13, "-"

    invoke-interface {p0, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1759
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    .line 1765
    .end local v8    # "pos":I
    :cond_88
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1766
    .local v3, "len":I
    :goto_8c
    if-lez v3, :cond_c

    .line 1767
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_c

    .line 1768
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1769
    add-int/lit8 v3, v3, -0x1

    goto :goto_8c

    .end local v3    # "len":I
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_a0
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_77

    .end local v5    # "numDashes":I
    .restart local v0    # "c":C
    .restart local v6    # "numDashes":I
    :cond_a2
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_52

    .line 1693
    :pswitch_data_a4
    .packed-switch 0x2b
        :pswitch_6d
        :pswitch_67
        :pswitch_64
        :pswitch_2d
        :pswitch_2d
        :pswitch_3d
        :pswitch_32
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_2d
        :pswitch_6a
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 1563
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1564
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1565
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I

    .prologue
    .line 1580
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1581
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1582
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 2154
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2179
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :cond_10
    :goto_10
    return-object p0

    .line 2158
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_11
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 2159
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 2165
    .local v1, "result":Ljava/lang/String;
    :try_start_16
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 2166
    .local v0, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_16 .. :try_end_1d} :catch_34

    move-result-object v1

    .line 2171
    .end local v0    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_1e
    if-nez v1, :cond_26

    .line 2172
    const-string v3, "[Exception] return original phonenumber"

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto :goto_10

    .line 2174
    :cond_26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_32

    .line 2175
    const-string v3, "[Exception_2] return original phonenumber"

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto :goto_10

    :cond_32
    move-object p0, v1

    .line 2179
    goto :goto_10

    .line 2168
    :catch_34
    move-exception v3

    goto :goto_1e
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneNumberE164"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 2204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2206
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_15

    .line 2207
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-nez v6, :cond_12

    .line 2231
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :goto_11
    return-object p0

    .line 2206
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2211
    :cond_15
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    .line 2213
    .local v5, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_4b

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_4b

    .line 2218
    :try_start_2b
    const-string v6, "ZZ"

    invoke-virtual {v5, p1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 2219
    .local v2, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v5, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 2220
    .local v3, "regionCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4b

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_47
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_2b .. :try_end_47} :catch_55

    move-result v6

    if-gtz v6, :cond_4b

    .line 2223
    move-object p2, v3

    .line 2229
    .end local v2    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_4b
    :goto_4b
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2231
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_53

    .end local v4    # "result":Ljava/lang/String;
    :goto_51
    move-object p0, v4

    goto :goto_11

    .restart local v4    # "result":Ljava/lang/String;
    :cond_53
    move-object v4, p0

    goto :goto_51

    .line 2225
    .end local v4    # "result":Ljava/lang/String;
    :catch_55
    move-exception v6

    goto :goto_4b
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .registers 8
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1607
    move v0, p1

    .line 1609
    .local v0, "formatType":I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_1b

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1b

    .line 1610
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1f

    .line 1611
    const/4 v0, 0x1

    .line 1624
    :cond_1b
    :goto_1b
    sparse-switch v0, :sswitch_data_44

    .line 1642
    :goto_1e
    :sswitch_1e
    return-void

    .line 1612
    :cond_1f
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_36

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_36

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_36

    .line 1614
    const/4 v0, 0x2

    goto :goto_1b

    .line 1620
    :cond_36
    const/4 v0, 0x0

    goto :goto_1b

    .line 1626
    :sswitch_38
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1e

    .line 1629
    :sswitch_3c
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_1e

    .line 1639
    :sswitch_40
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    goto :goto_1e

    .line 1624
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_40
        0x1 -> :sswitch_38
        0x2 -> :sswitch_3c
        0x52 -> :sswitch_1e
    .end sparse-switch
.end method

.method public static formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 2124
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 2125
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 2127
    .local v1, "result":Ljava/lang/String;
    :try_start_5
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 2128
    .local v0, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2129
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_14
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_5 .. :try_end_14} :catch_16

    move-result-object v1

    .line 2133
    .end local v0    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_15
    :goto_15
    return-object v1

    .line 2131
    :catch_16
    move-exception v3

    goto :goto_15
.end method

.method public static getCurrentOtaCountryIdd(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 4413
    const-string v2, ""

    .line 4415
    .local v2, "idd":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assisted_dialing"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4416
    .local v1, "enableAssistedDialing":I
    if-ne v1, v3, :cond_3e

    :goto_f
    invoke-static {p0, v3}, Landroid/telephony/PhoneNumberUtils;->getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 4418
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_20

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 4419
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4422
    :cond_20
    if-eqz v0, :cond_25

    .line 4423
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4426
    :cond_25
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentOtaCountryIdd(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    return-object v2

    .line 4416
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_3e
    const/4 v3, 0x0

    goto :goto_f
.end method

.method public static getCurrentOtaCountryNanp(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 4434
    const-string v2, ""

    .line 4436
    .local v2, "nanp":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assisted_dialing"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4437
    .local v1, "enableAssistedDialing":I
    if-ne v1, v3, :cond_3e

    :goto_f
    invoke-static {p0, v3}, Landroid/telephony/PhoneNumberUtils;->getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 4439
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_20

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 4440
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4443
    :cond_20
    if-eqz v0, :cond_25

    .line 4444
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4447
    :cond_25
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentOtaCountryNanp(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4448
    return-object v2

    .line 4437
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_3e
    const/4 v3, 0x0

    goto :goto_f
.end method

.method private static getDefaultIdp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3769
    const/4 v0, 0x0

    .line 3770
    .local v0, "ps":Ljava/lang/String;
    const-string/jumbo v1, "ro.cdma.idpstring"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3771
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3772
    const-string v0, "011"

    .line 3774
    :cond_f
    return-object v0
.end method

.method public static getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;
    .registers 25
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2707
    const/4 v3, 0x0

    .line 2708
    .local v3, "clir":I
    const/4 v13, 0x0

    .line 2710
    .local v13, "isRoaming":I
    const-string/jumbo v22, "ro.csc.sales_code"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2713
    .local v19, "salesCode":Ljava/lang/String;
    if-nez p0, :cond_d

    const/4 v5, 0x0

    .line 2878
    :cond_c
    :goto_c
    return-object v5

    .line 2716
    :cond_d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_15

    const/4 v5, 0x0

    goto :goto_c

    .line 2717
    :cond_15
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x2f

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_29

    const/4 v5, 0x0

    goto :goto_c

    .line 2722
    :cond_29
    const-string v22, "/"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 2737
    .local v21, "words":[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v4, v21, v22

    .line 2741
    .local v4, "dialNumber":Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2746
    const-string v17, ""

    .line 2767
    .local v17, "numbers":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v18

    .line 2801
    .local v18, "phoneType":I
    const/16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_10e

    .line 2802
    const-string/jumbo v22, "ro.ril.ecclist"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2803
    const-string/jumbo v22, "ril.ecclist"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2804
    .local v8, "ecclist_pbm":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_7e

    .line 2805
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2819
    .end local v8    # "ecclist_pbm":Ljava/lang/String;
    :cond_7e
    const-string/jumbo v22, "ril.ecclist_net"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2820
    .local v7, "ecclist_net":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_a8

    .line 2821
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2824
    :cond_a8
    const-string/jumbo v22, "persist.radio.test_emer_num"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2825
    .local v9, "ecclist_test":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_d2

    .line 2826
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2839
    :cond_d2
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_173

    .line 2842
    const-string v22, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v15, v2

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_e4
    if-ge v12, v15, :cond_170

    aget-object v10, v2, v12

    .line 2843
    .local v10, "emergencyNum":Ljava/lang/String;
    const-string v22, "/"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 2844
    .local v20, "splitStr":[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v6, v20, v22

    .line 2845
    .local v6, "eccNum":Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_16d

    const/16 v22, 0x1

    aget-object v5, v20, v22

    .line 2846
    .local v5, "eccCat":Ljava/lang/String;
    :goto_105
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 2842
    add-int/lit8 v12, v12, 0x1

    goto :goto_e4

    .line 2808
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "eccCat":Ljava/lang/String;
    .end local v6    # "eccNum":Ljava/lang/String;
    .end local v7    # "ecclist_net":Ljava/lang/String;
    .end local v9    # "ecclist_test":Ljava/lang/String;
    .end local v10    # "emergencyNum":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    .end local v20    # "splitStr":[Ljava/lang/String;
    :cond_10e
    const/4 v11, 0x0

    .line 2809
    .local v11, "i":I
    :goto_10f
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "ril.ecclist"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2810
    .local v14, "key":Ljava/lang/String;
    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2811
    .local v16, "n":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_7e

    .line 2812
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2813
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2808
    add-int/lit8 v11, v11, 0x1

    goto :goto_10f

    .line 2845
    .end local v11    # "i":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v16    # "n":Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v6    # "eccNum":Ljava/lang/String;
    .restart local v7    # "ecclist_net":Ljava/lang/String;
    .restart local v9    # "ecclist_test":Ljava/lang/String;
    .restart local v10    # "emergencyNum":Ljava/lang/String;
    .restart local v12    # "i$":I
    .restart local v15    # "len$":I
    .restart local v20    # "splitStr":[Ljava/lang/String;
    :cond_16d
    const-string v5, ""

    goto :goto_105

    .line 2865
    .end local v6    # "eccNum":Ljava/lang/String;
    .end local v10    # "emergencyNum":Ljava/lang/String;
    .end local v20    # "splitStr":[Ljava/lang/String;
    :cond_170
    const/4 v5, 0x0

    goto/16 :goto_c

    .line 2869
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    :cond_173
    const-string v22, "BRI"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1a3

    const-string v22, "FET"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1a3

    const-string v22, "TWM"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1a3

    const-string v22, "CWT"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1bb

    :cond_1a3
    const-string v22, "110"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1b7

    const-string v22, "119"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1bb

    .line 2871
    :cond_1b7
    const-string v5, ""

    goto/16 :goto_c

    .line 2875
    :cond_1bb
    const-string v22, "112"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1cf

    const-string v22, "911"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d3

    .line 2876
    :cond_1cf
    const-string v5, ""

    goto/16 :goto_c

    .line 2878
    :cond_1d3
    const/4 v5, 0x0

    goto/16 :goto_c
.end method

.method public static getEmergencyServiceCategoryforkor(Ljava/lang/String;)Ljava/lang/String;
    .registers 31
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2889
    const-string v17, "112,911,999,000,08,110,118,119,122,113,125,111,117"

    .line 2890
    .local v17, "korDefaultECCList":Ljava/lang/String;
    const-string v23, ""

    .line 2893
    .local v23, "salesCode":Ljava/lang/String;
    if-nez p0, :cond_9

    const/16 v28, 0x0

    .line 3323
    :goto_8
    return-object v28

    .line 2897
    :cond_9
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2905
    .local v5, "dialNumber":Ljava/lang/String;
    const-string v21, ""

    .line 2907
    .local v21, "numbers":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2908
    .local v11, "i":I
    :goto_10
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "ril.ecclist"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2909
    .local v16, "key":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2911
    .local v19, "n":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_ba

    .line 2927
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_f9

    .line 2928
    move-object/from16 v21, v17

    .line 2935
    :goto_3a
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_822

    .line 2938
    const-string/jumbo v28, "ril.currentplmn"

    const-string v29, "domestic"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2939
    .local v4, "currPlmn":Ljava/lang/String;
    const-string v28, "domestic"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_64

    const-string/jumbo v28, "unknown"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_64

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_11a

    :cond_64
    const/4 v14, 0x1

    .line 2944
    .local v14, "isDomestic":Z
    :goto_65
    const-string v28, "SKT"

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_24d

    .line 2972
    const-string v28, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_7f
    move/from16 v0, v18

    if-ge v12, v0, :cond_822

    aget-object v10, v2, v12

    .line 2973
    .local v10, "emergencyNum":Ljava/lang/String;
    const-string v28, "/"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 2974
    .local v27, "splitStr":[Ljava/lang/String;
    const/16 v28, 0x0

    aget-object v9, v27, v28

    .line 2975
    .local v9, "eccNum":Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_11d

    const/16 v28, 0x1

    aget-object v8, v27, v28

    .line 2979
    .local v8, "eccCat":Ljava/lang/String;
    :goto_a2
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_249

    .line 2980
    const-string v28, "112"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_120

    .line 2983
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 2914
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "currPlmn":Ljava/lang/String;
    .end local v8    # "eccCat":Ljava/lang/String;
    .end local v9    # "eccNum":Ljava/lang/String;
    .end local v10    # "emergencyNum":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v14    # "isDomestic":Z
    .end local v18    # "len$":I
    .end local v27    # "splitStr":[Ljava/lang/String;
    :cond_ba
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2916
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 2907
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_10

    .line 2930
    :cond_f9
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_3a

    .line 2939
    .restart local v4    # "currPlmn":Ljava/lang/String;
    :cond_11a
    const/4 v14, 0x0

    goto/16 :goto_65

    .line 2975
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v9    # "eccNum":Ljava/lang/String;
    .restart local v10    # "emergencyNum":Ljava/lang/String;
    .restart local v12    # "i$":I
    .restart local v14    # "isDomestic":Z
    .restart local v18    # "len$":I
    .restart local v27    # "splitStr":[Ljava/lang/String;
    :cond_11d
    const-string v8, ""

    goto :goto_a2

    .line 2984
    .restart local v8    # "eccCat":Ljava/lang/String;
    :cond_120
    const-string v28, "119"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_14d

    .line 2985
    const-string/jumbo v28, "ril.skt119Cat"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2987
    .local v7, "ecc119":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_13b

    move-object/from16 v28, v7

    .line 2988
    goto/16 :goto_8

    .line 2989
    :cond_13b
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_145

    move-object/from16 v28, v8

    .line 2990
    goto/16 :goto_8

    .line 2992
    :cond_145
    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 2994
    .end local v7    # "ecc119":Ljava/lang/String;
    :cond_14d
    const-string v28, "911"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_15f

    .line 2995
    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 2996
    :cond_15f
    const-string v28, "122"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_171

    .line 2997
    const/16 v28, 0x8

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 2998
    :cond_171
    const-string v28, "113"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_18d

    .line 2999
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v14, v0, :cond_189

    const/16 v28, 0x3

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    :cond_189
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3000
    :cond_18d
    const-string v28, "125"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1a9

    .line 3001
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v14, v0, :cond_1a5

    const/16 v28, 0x9

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    :cond_1a5
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3002
    :cond_1a9
    const-string v28, "117"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1c5

    .line 3003
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v14, v0, :cond_1c1

    const/16 v28, 0x12

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    :cond_1c1
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3004
    :cond_1c5
    const-string v28, "118"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1e5

    .line 3005
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v14, v0, :cond_1dd

    const/16 v28, 0x13

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    :cond_1dd
    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3006
    :cond_1e5
    const-string v28, "111"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_201

    .line 3007
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v14, v0, :cond_1fd

    const/16 v28, 0x6

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    :cond_1fd
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3008
    :cond_201
    const-string v28, "127"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_20f

    .line 3009
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3010
    :cond_20f
    const-string v28, "000"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_237

    const-string v28, "08"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_237

    const-string v28, "110"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_237

    const-string v28, "999"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_245

    .line 3014
    :cond_237
    if-nez v14, :cond_241

    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    :cond_241
    const/16 v28, 0x0

    goto/16 :goto_8

    :cond_245
    move-object/from16 v28, v8

    .line 3017
    goto/16 :goto_8

    .line 2972
    :cond_249
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7f

    .line 3021
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "eccCat":Ljava/lang/String;
    .end local v9    # "eccNum":Ljava/lang/String;
    .end local v10    # "emergencyNum":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v18    # "len$":I
    .end local v27    # "splitStr":[Ljava/lang/String;
    :cond_24d
    const-string v28, "KTT"

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_391

    .line 3036
    const-string v28, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v18, v0

    .restart local v18    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_267
    move/from16 v0, v18

    if-ge v12, v0, :cond_822

    aget-object v10, v2, v12

    .line 3037
    .restart local v10    # "emergencyNum":Ljava/lang/String;
    const-string v28, "/"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 3038
    .restart local v27    # "splitStr":[Ljava/lang/String;
    const/16 v28, 0x0

    aget-object v9, v27, v28

    .line 3039
    .restart local v9    # "eccNum":Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_29c

    const/16 v28, 0x1

    aget-object v8, v27, v28

    .line 3043
    .restart local v8    # "eccCat":Ljava/lang/String;
    :goto_28a
    const-string v28, "112"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_29f

    .line 3044
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3039
    .end local v8    # "eccCat":Ljava/lang/String;
    :cond_29c
    const-string v8, ""

    goto :goto_28a

    .line 3045
    .restart local v8    # "eccCat":Ljava/lang/String;
    :cond_29f
    const-string v28, "119"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2b1

    .line 3046
    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3047
    :cond_2b1
    const-string v28, "911"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2c3

    .line 3048
    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3049
    :cond_2c3
    const-string v28, "122"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2d5

    .line 3050
    const/16 v28, 0x8

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3051
    :cond_2d5
    const-string v28, "113"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2e7

    .line 3052
    const/16 v28, 0x3

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3053
    :cond_2e7
    const-string v28, "125"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2f9

    .line 3054
    const/16 v28, 0x9

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3055
    :cond_2f9
    const-string v28, "117"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_30b

    .line 3056
    const/16 v28, 0x12

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3057
    :cond_30b
    const-string v28, "118"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_31d

    .line 3058
    const/16 v28, 0x13

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3059
    :cond_31d
    const-string v28, "111"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_32f

    .line 3060
    const/16 v28, 0x7

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3061
    :cond_32f
    const-string v28, "127"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_33d

    .line 3062
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3063
    :cond_33d
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_34d

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_34d

    move-object/from16 v28, v8

    .line 3065
    goto/16 :goto_8

    .line 3066
    :cond_34d
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_361

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_361

    .line 3068
    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3069
    :cond_361
    const-string v28, "000"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_389

    const-string v28, "08"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_389

    const-string v28, "110"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_389

    const-string v28, "999"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_38d

    .line 3073
    :cond_389
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3036
    :cond_38d
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_267

    .line 3078
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "eccCat":Ljava/lang/String;
    .end local v9    # "eccNum":Ljava/lang/String;
    .end local v10    # "emergencyNum":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v18    # "len$":I
    .end local v27    # "splitStr":[Ljava/lang/String;
    :cond_391
    const-string v28, "LGT"

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_68f

    .line 3116
    const-string/jumbo v28, "ril.currentplmn"

    const-string v29, "domestic"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3120
    .local v3, "currIso":Ljava/lang/String;
    const-string v28, "gsm.sim.state"

    const-string v29, ""

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3121
    .local v25, "simstate":Ljava/lang/String;
    const-string v28, "gsm.network.type"

    const-string v29, ""

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3122
    .local v20, "network_type":Ljava/lang/String;
    const-string/jumbo v28, "ril.simtype"

    const-string v29, ""

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3123
    .local v26, "simtype":Ljava/lang/String;
    const/4 v13, 0x0

    .line 3124
    .local v13, "isCdma":Z
    const/4 v15, 0x0

    .line 3125
    .local v15, "isLteOnly":Z
    const/16 v24, 0x0

    .line 3128
    .local v24, "serviceState":I
    :try_start_3c3
    const-string/jumbo v28, "phone"

    invoke-static/range {v28 .. v28}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v22

    .line 3129
    .local v22, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v22, :cond_3df

    .line 3130
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_3d3
    .catch Landroid/os/RemoteException; {:try_start_3c3 .. :try_end_3d3} :catch_47c

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_479

    const/4 v13, 0x1

    .line 3131
    :goto_3dd
    const/16 v24, 0x1

    .line 3148
    .end local v22    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_3df
    :goto_3df
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "isCdma = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3151
    if-eqz v13, :cond_48f

    const-string v28, "domestic"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_48f

    const-string v28, "3"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_41b

    const-string v28, "18"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_48f

    .line 3152
    :cond_41b
    const-string v28, "112"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_475

    const-string v28, "119"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_475

    const-string v28, "122"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_475

    const-string v28, "113"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_475

    const-string v28, "125"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_475

    const-string v28, "117"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_475

    const-string v28, "111"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_475

    const-string v28, "114"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_475

    const-string v28, "118"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_48b

    .line 3155
    :cond_475
    const-string v28, ""

    goto/16 :goto_8

    .line 3130
    .restart local v22    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_479
    const/4 v13, 0x0

    goto/16 :goto_3dd

    .line 3133
    .end local v22    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_47c
    move-exception v6

    .line 3134
    .local v6, "e":Landroid/os/RemoteException;
    const-string v28, "PhoneNumberUtils"

    const-string/jumbo v29, "phone.getActivePhoneType() failed"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3df

    .line 3157
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_48b
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3159
    :cond_48f
    if-eqz v15, :cond_571

    const-string v28, "domestic"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_571

    const-string v28, "3"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4b3

    const-string v28, "18"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_571

    .line 3160
    :cond_4b3
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "isLteOnly emergency in domestic, dialNumber = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3161
    const-string v28, "112"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4dd

    .line 3162
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3163
    :cond_4dd
    const-string v28, "119"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4ef

    .line 3164
    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3165
    :cond_4ef
    const-string v28, "911"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_501

    .line 3166
    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3167
    :cond_501
    const-string v28, "122"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_513

    .line 3168
    const/16 v28, 0x8

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3169
    :cond_513
    const-string v28, "113"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_525

    .line 3170
    const/16 v28, 0x3

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3171
    :cond_525
    const-string v28, "125"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_537

    .line 3172
    const/16 v28, 0x9

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3173
    :cond_537
    const-string v28, "117"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_549

    .line 3174
    const/16 v28, 0x12

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3175
    :cond_549
    const-string v28, "111"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_55b

    .line 3176
    const/16 v28, 0x6

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3177
    :cond_55b
    const-string v28, "118"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_56d

    .line 3178
    const/16 v28, 0x13

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3180
    :cond_56d
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3182
    :cond_571
    const-string/jumbo v28, "oversea"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5d9

    .line 3183
    const-string v28, "112"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_58e

    .line 3184
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3185
    :cond_58e
    const-string v28, "122"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5a0

    .line 3186
    const/16 v28, 0x8

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3187
    :cond_5a0
    const-string v28, "911"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5b2

    .line 3188
    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3189
    :cond_5b2
    const-string v28, "119"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5d5

    .line 3190
    const-string/jumbo v28, "ril.skt119Cat"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3192
    .restart local v7    # "ecc119":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_5cd

    move-object/from16 v28, v7

    .line 3193
    goto/16 :goto_8

    .line 3195
    :cond_5cd
    const/16 v28, 0x2

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3198
    .end local v7    # "ecc119":Ljava/lang/String;
    :cond_5d5
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3201
    :cond_5d9
    const-string v28, "112"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5eb

    .line 3202
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3203
    :cond_5eb
    const-string v28, "119"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5fd

    .line 3204
    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3205
    :cond_5fd
    const-string v28, "911"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_60f

    .line 3206
    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3207
    :cond_60f
    const-string v28, "122"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_621

    .line 3208
    const/16 v28, 0x8

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3209
    :cond_621
    const-string v28, "113"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_633

    .line 3210
    const/16 v28, 0x3

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3211
    :cond_633
    const-string v28, "125"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_645

    .line 3212
    const/16 v28, 0x9

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3213
    :cond_645
    const-string v28, "117"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_657

    .line 3214
    const/16 v28, 0x12

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3215
    :cond_657
    const-string v28, "118"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_669

    .line 3216
    const/16 v28, 0x13

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3217
    :cond_669
    const-string v28, "111"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_67b

    .line 3218
    const/16 v28, 0x6

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3219
    :cond_67b
    if-eqz v13, :cond_68b

    const-string v28, "114"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_68b

    .line 3220
    const-string v28, ""

    goto/16 :goto_8

    .line 3222
    :cond_68b
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3225
    .end local v3    # "currIso":Ljava/lang/String;
    .end local v13    # "isCdma":Z
    .end local v15    # "isLteOnly":Z
    .end local v20    # "network_type":Ljava/lang/String;
    .end local v24    # "serviceState":I
    .end local v25    # "simstate":Ljava/lang/String;
    .end local v26    # "simtype":Ljava/lang/String;
    :cond_68f
    const-string v28, "ANY"

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_822

    .line 3253
    const-string v28, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v18, v0

    .restart local v18    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_6a9
    move/from16 v0, v18

    if-ge v12, v0, :cond_822

    aget-object v10, v2, v12

    .line 3254
    .restart local v10    # "emergencyNum":Ljava/lang/String;
    const-string v28, "/"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 3255
    .restart local v27    # "splitStr":[Ljava/lang/String;
    const/16 v28, 0x0

    aget-object v9, v27, v28

    .line 3256
    .restart local v9    # "eccNum":Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_6e4

    const/16 v28, 0x1

    aget-object v8, v27, v28

    .line 3260
    .restart local v8    # "eccCat":Ljava/lang/String;
    :goto_6cc
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_81e

    .line 3261
    const-string v28, "112"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6e7

    .line 3264
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3256
    .end local v8    # "eccCat":Ljava/lang/String;
    :cond_6e4
    const-string v8, ""

    goto :goto_6cc

    .line 3265
    .restart local v8    # "eccCat":Ljava/lang/String;
    :cond_6e7
    const-string v28, "119"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_714

    .line 3266
    const-string/jumbo v28, "ril.skt119Cat"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3268
    .restart local v7    # "ecc119":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_702

    move-object/from16 v28, v7

    .line 3269
    goto/16 :goto_8

    .line 3270
    :cond_702
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_70c

    move-object/from16 v28, v8

    .line 3271
    goto/16 :goto_8

    .line 3273
    :cond_70c
    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3275
    .end local v7    # "ecc119":Ljava/lang/String;
    :cond_714
    const-string v28, "911"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_726

    .line 3276
    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3277
    :cond_726
    const-string v28, "122"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_738

    .line 3278
    const/16 v28, 0x8

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3279
    :cond_738
    const-string v28, "113"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_754

    .line 3280
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v14, v0, :cond_750

    const/16 v28, 0x3

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    :cond_750
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3281
    :cond_754
    const-string v28, "125"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_770

    .line 3282
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v14, v0, :cond_76c

    const/16 v28, 0x9

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    :cond_76c
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3283
    :cond_770
    const-string v28, "127"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_78c

    .line 3284
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v14, v0, :cond_788

    const/16 v28, 0x11

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    :cond_788
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3285
    :cond_78c
    const-string v28, "111"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7a8

    .line 3286
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v14, v0, :cond_7a4

    const/16 v28, 0x6

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    :cond_7a4
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3287
    :cond_7a8
    const-string v28, "117"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7c4

    .line 3288
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v14, v0, :cond_7c0

    const/16 v28, 0x12

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    :cond_7c0
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3289
    :cond_7c4
    const-string v28, "118"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7e4

    .line 3290
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v14, v0, :cond_7dc

    const/16 v28, 0x13

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    :cond_7dc
    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    .line 3291
    :cond_7e4
    const-string v28, "000"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_80c

    const-string v28, "08"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_80c

    const-string v28, "110"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_80c

    const-string v28, "999"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_81a

    .line 3295
    :cond_80c
    if-nez v14, :cond_816

    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_8

    :cond_816
    const/16 v28, 0x0

    goto/16 :goto_8

    :cond_81a
    move-object/from16 v28, v8

    .line 3298
    goto/16 :goto_8

    .line 3253
    :cond_81e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6a9

    .line 3306
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "currPlmn":Ljava/lang/String;
    .end local v8    # "eccCat":Ljava/lang/String;
    .end local v9    # "eccNum":Ljava/lang/String;
    .end local v10    # "emergencyNum":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v14    # "isDomestic":Z
    .end local v18    # "len$":I
    .end local v27    # "splitStr":[Ljava/lang/String;
    :cond_822
    const-string/jumbo v28, "ril.currentplmn"

    const-string v29, "domestic"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3309
    .restart local v3    # "currIso":Ljava/lang/String;
    const-string v28, "domestic"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_846

    const-string/jumbo v28, "unknown"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_846

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_89e

    .line 3310
    :cond_846
    const-string v28, "112"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_896

    const-string v28, "119"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_896

    const-string v28, "122"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_896

    const-string v28, "113"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_896

    const-string v28, "125"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_896

    const-string v28, "117"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_896

    const-string v28, "111"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_896

    const-string v28, "118"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_89a

    .line 3313
    :cond_896
    const-string v28, ""

    goto/16 :goto_8

    .line 3315
    :cond_89a
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 3318
    :cond_89e
    const-string v28, "000"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_8f8

    const-string v28, "08"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_8f8

    const-string v28, "110"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_8f8

    const-string v28, "999"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_8f8

    const-string v28, "118"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_8f8

    const-string v28, "112"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_8f8

    const-string v28, "911"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_8f8

    const-string v28, "119"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_8f8

    const-string v28, "122"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_8fc

    .line 3321
    :cond_8f8
    const-string v28, ""

    goto/16 :goto_8

    .line 3323
    :cond_8fc
    const/16 v28, 0x0

    goto/16 :goto_8
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1593
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1595
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method protected static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .registers 4
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 3788
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 3794
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_15

    .line 3795
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    .line 3796
    const/4 v2, 0x1

    .line 3802
    :goto_11
    return v2

    .line 3794
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3799
    :cond_15
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1f

    .line 3800
    const/4 v2, 0x2

    goto :goto_11

    .line 3802
    :cond_1f
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public static getLTNContactsMatchLength(Landroid/content/Context;)I
    .registers 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4459
    const/4 v5, 0x7

    .line 4460
    .local v5, "length":I
    const/4 v7, 0x0

    .local v7, "mcc":I
    const/4 v8, 0x0

    .line 4461
    .local v8, "mnc":I
    const/4 v1, 0x0

    .line 4462
    .local v1, "SimOperator":Ljava/lang/String;
    const/4 v6, 0x0

    .line 4464
    .local v6, "matchLength":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4465
    .local v2, "currSimSlot":I
    const-string v12, "clidigits.preferences_name"

    const/4 v13, 0x3

    invoke-virtual {p0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 4466
    .local v10, "sp":Landroid/content/SharedPreferences;
    const-string v12, "Clidigits"

    const/4 v13, 0x7

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4468
    .local v0, "Clidigits":I
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 4471
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v12, "phone"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v11

    .line 4473
    .local v11, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    const-string/jumbo v12, "persist.radio.calldefault.simid"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 4475
    .local v9, "simSlot":I
    invoke-static {v9}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_40

    invoke-static {v9}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v12

    if-nez v12, :cond_41

    .line 4584
    .end local v0    # "Clidigits":I
    :cond_40
    :goto_40
    return v0

    .line 4480
    .restart local v0    # "Clidigits":I
    :cond_41
    if-eqz v11, :cond_47

    .line 4482
    :try_start_43
    invoke-interface {v11}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_46} :catch_7b

    move-result v2

    .line 4489
    :cond_47
    :goto_47
    invoke-static {v2}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/MultiSimTelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 4491
    if-eqz v1, :cond_40

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_40

    .line 4493
    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 4494
    const/4 v12, 0x3

    const/4 v13, 0x5

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 4501
    sparse-switch v7, :sswitch_data_c8

    .line 4574
    const/4 v5, 0x7

    .line 4578
    :goto_6f
    if-eq v0, v5, :cond_79

    .line 4580
    const-string v12, "Clidigits"

    invoke-interface {v3, v12, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4581
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_79
    move v0, v5

    .line 4584
    goto :goto_40

    .line 4484
    :catch_7b
    move-exception v4

    .line 4485
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v12, "PhoneNumberUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ITelephony threw RemoteException"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 4513
    .end local v4    # "ex":Landroid/os/RemoteException;
    :sswitch_95
    const/4 v5, 0x7

    .line 4514
    goto :goto_6f

    .line 4528
    :sswitch_97
    const/16 v5, 0x8

    .line 4529
    goto :goto_6f

    .line 4534
    :sswitch_9a
    const/16 v5, 0x9

    .line 4535
    goto :goto_6f

    .line 4541
    :sswitch_9d
    const/16 v5, 0xa

    .line 4542
    goto :goto_6f

    .line 4546
    :sswitch_a0
    const/16 v5, 0xb

    .line 4547
    goto :goto_6f

    .line 4551
    :sswitch_a3
    const/4 v12, 0x1

    if-ne v8, v12, :cond_a9

    .line 4552
    const/16 v5, 0x8

    goto :goto_6f

    .line 4554
    :cond_a9
    const/4 v5, 0x7

    .line 4555
    goto :goto_6f

    .line 4559
    :sswitch_ab
    const/4 v12, 0x1

    if-eq v8, v12, :cond_b4

    const/4 v12, 0x2

    if-eq v8, v12, :cond_b4

    const/4 v12, 0x3

    if-ne v8, v12, :cond_b6

    .line 4560
    :cond_b4
    const/4 v5, 0x7

    goto :goto_6f

    .line 4562
    :cond_b6
    const/16 v5, 0xa

    .line 4563
    goto :goto_6f

    .line 4567
    :sswitch_b9
    const/16 v12, 0x32

    if-eq v8, v12, :cond_c3

    const/4 v12, 0x5

    if-eq v8, v12, :cond_c3

    const/4 v12, 0x3

    if-ne v8, v12, :cond_c5

    .line 4568
    :cond_c3
    const/4 v5, 0x7

    goto :goto_6f

    .line 4570
    :cond_c5
    const/16 v5, 0x8

    .line 4571
    goto :goto_6f

    .line 4501
    :sswitch_data_c8
    .sparse-switch
        0xd6 -> :sswitch_95
        0x14a -> :sswitch_9d
        0x14e -> :sswitch_b9
        0x152 -> :sswitch_95
        0x16b -> :sswitch_95
        0x170 -> :sswitch_97
        0x172 -> :sswitch_9d
        0x176 -> :sswitch_95
        0x1c6 -> :sswitch_97
        0x1c7 -> :sswitch_9a
        0x1cc -> :sswitch_a0
        0x1d2 -> :sswitch_9a
        0x2c0 -> :sswitch_97
        0x2c2 -> :sswitch_97
        0x2c4 -> :sswitch_95
        0x2c6 -> :sswitch_97
        0x2c8 -> :sswitch_97
        0x2ca -> :sswitch_95
        0x2cc -> :sswitch_95
        0x2d2 -> :sswitch_95
        0x2d4 -> :sswitch_97
        0x2da -> :sswitch_97
        0x2dc -> :sswitch_9d
        0x2de -> :sswitch_ab
        0x2e0 -> :sswitch_97
        0x2e4 -> :sswitch_97
        0x2e8 -> :sswitch_95
        0x2ec -> :sswitch_a3
    .end sparse-switch
.end method

.method public static getMinMatch()I
    .registers 3

    .prologue
    .line 4396
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_CallerIdMatchingDigit"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    .line 4398
    sget v0, Landroid/telephony/PhoneNumberUtils;->MIN_MATCH:I

    .line 4404
    .local v0, "ret":I
    :goto_f
    return v0

    .line 4400
    .end local v0    # "ret":I
    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_CallerIdMatchingDigit"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_f
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .registers 15
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 305
    const/4 v8, 0x0

    .line 307
    .local v8, "number":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 309
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_9

    .line 363
    :cond_8
    :goto_8
    return-object v3

    .line 313
    :cond_9
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 314
    .local v10, "scheme":Ljava/lang/String;
    const/4 v11, 0x0

    .line 316
    .local v11, "subscription":I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 317
    const-string/jumbo v0, "subscription"

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPreferredVoiceSubscription()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 321
    :cond_27
    const-string/jumbo v0, "tel"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string/jumbo v0, "sip"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 322
    :cond_39
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v11, v0, p1}, Landroid/telephony/PhoneNumberUtils;->checkAndAppendPrefix(Landroid/content/Intent;ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 327
    :cond_42
    const-string/jumbo v0, "voicemail"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 328
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 329
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/telephony/MSimTelephonyManager;->getCompleteVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 332
    :cond_5e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 335
    :cond_67
    if-eqz p1, :cond_8

    .line 339
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 340
    .local v12, "type":Ljava/lang/String;
    const/4 v9, 0x0

    .line 343
    .local v9, "phoneColumn":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 344
    .local v6, "authority":Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 345
    const-string/jumbo v9, "number"

    .line 350
    :cond_7d
    :goto_7d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 353
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_a0

    .line 355
    :try_start_8f
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 356
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9c
    .catchall {:try_start_8f .. :try_end_9c} :catchall_b1

    move-result-object v8

    .line 359
    :cond_9d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_a0
    invoke-static {p0, v11, v8, p1}, Landroid/telephony/PhoneNumberUtils;->checkAndAppendPrefix(Landroid/content/Intent;ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    .line 346
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_a6
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 347
    const-string v9, "data1"

    goto :goto_7d

    .line 359
    .restart local v7    # "c":Landroid/database/Cursor;
    :catchall_b1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useSharedPreference"    # Z

    .prologue
    const/4 v2, 0x0

    .line 5511
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 5512
    .local v7, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "otaCountryMccKey"

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5514
    .local v8, "spOtaCountryMcc":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5515
    .local v0, "otacr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 5517
    .local v6, "c":Landroid/database/Cursor;
    if-eqz p1, :cond_15

    if-nez v8, :cond_1f

    .line 5520
    :cond_15
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->OTA_COUNTRY_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5528
    :goto_1e
    return-object v6

    .line 5525
    :cond_1f
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const-string/jumbo v3, "mcc=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1e
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1038
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, "np":Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 1042
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public static getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 3876
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3877
    .local v0, "delimiterIndex":I
    if-gez v0, :cond_e

    .line 3878
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3880
    :cond_e
    if-gez v0, :cond_32

    .line 3881
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3883
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3885
    :cond_32
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVoiceMailNumberForGlobalMode(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    .line 3401
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 3402
    .local v1, "isRoaming":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 3404
    .local v3, "mdn":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 3409
    .local v2, "iso":Ljava/lang/String;
    const-string v4, "gsm.current.phone-type"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3412
    .local v0, "currentPhone":I
    if-eqz v1, :cond_3a

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3a

    .line 3413
    if-eqz v3, :cond_39

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3431
    .end local v3    # "mdn":Ljava/lang/String;
    :cond_39
    :goto_39
    return-object v3

    .line 3415
    .restart local v3    # "mdn":Ljava/lang/String;
    :cond_3a
    const-string v4, "VZW-CDMA"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    if-eqz v1, :cond_6f

    if-ne v0, v6, :cond_6f

    const-string/jumbo v4, "us"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 3416
    if-eqz v3, :cond_39

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getCurrentOtaCountryIdd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_39

    .line 3418
    :cond_6f
    const-string v4, "VZW-CDMA"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 3419
    const-string v3, "*86"

    goto :goto_39

    .line 3421
    :cond_7c
    const-string v4, "SPR-CDMA"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    const-string/jumbo v4, "us"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    const-string v4, "ca"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 3424
    :cond_97
    const-string v4, "SPR-CDMA"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 3425
    if-eqz v3, :cond_39

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_39

    .line 3427
    :cond_b7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_39

    .line 3431
    const-string v3, "*86"

    goto/16 :goto_39
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .registers 6
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 594
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 596
    .local v0, "origLength":I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 597
    .local v1, "pIndex":I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 599
    .local v3, "wIndex":I
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 601
    .local v2, "trimIndex":I
    if-gez v2, :cond_19

    .line 602
    add-int/lit8 v4, v0, -0x1

    .line 604
    :goto_18
    return v4

    :cond_19
    add-int/lit8 v4, v2, -0x1

    goto :goto_18
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .registers 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 1218
    move v2, p2

    .local v2, "i":I
    :goto_1
    add-int v3, p3, p2

    if-ge v2, v3, :cond_10

    .line 1225
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 1228
    .local v1, "c":C
    if-nez v1, :cond_11

    .line 1260
    .end local v1    # "c":C
    :cond_10
    return-void

    .line 1231
    .restart local v1    # "c":C
    :cond_11
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1240
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 1242
    .local v0, "b":B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_25

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_10

    .line 1250
    :cond_25
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 1253
    if-eqz v1, :cond_10

    .line 1257
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1218
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p0, "np"    # Ljava/lang/String;
    .param p1, "numDigits"    # I

    .prologue
    .line 1051
    if-nez p0, :cond_4

    const/4 v5, 0x0

    .line 1064
    :goto_3
    return-object v5

    .line 1053
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1054
    .local v3, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1056
    .local v2, "length":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    move v4, v2

    .line 1057
    .local v4, "s":I
    :goto_10
    if-ltz v1, :cond_20

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_20

    .line 1059
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1061
    .local v0, "c":C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1057
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1064
    .end local v0    # "c":C
    :cond_20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static final is12Key(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 236
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_10

    const/16 v0, 0x23

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isCheckInvalidNumber(Ljava/lang/String;)Z
    .registers 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 4623
    if-nez p0, :cond_4

    .line 4635
    :cond_3
    :goto_3
    return v3

    .line 4627
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4628
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v2, :cond_18

    .line 4629
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4630
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCheckValidRange(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4628
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 4635
    .end local v0    # "c":C
    :cond_18
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public static isCheckValidRange(C)Z
    .registers 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 4642
    const/16 v1, 0x30

    if-lt p0, v1, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    .line 4652
    :cond_9
    :goto_9
    return v0

    .line 4644
    :cond_a
    const/16 v1, 0x2a

    if-eq p0, v1, :cond_9

    const/16 v1, 0x23

    if-eq p0, v1, :cond_9

    const/16 v1, 0x2d

    if-eq p0, v1, :cond_9

    const/16 v1, 0x3b

    if-eq p0, v1, :cond_9

    const/16 v1, 0x2c

    if-eq p0, v1, :cond_9

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_9

    .line 4652
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isCountryCallingCode(I)Z
    .registers 2
    .param p0, "countryCallingCodeCandidate"    # I

    .prologue
    .line 4217
    if-lez p0, :cond_e

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_e

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isDefaultPlusCode(Ljava/lang/String;)Z
    .registers 6
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x31

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 488
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_c

    .line 496
    :cond_b
    :goto_b
    return v0

    .line 493
    :cond_c
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_b

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_b

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_b

    move v0, v1

    .line 494
    goto :goto_b
.end method

.method public static final isDialable(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 242
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_18

    const/16 v0, 0x23

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_18

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static isDialable(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1352
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 1353
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1354
    const/4 v2, 0x0

    .line 1357
    :goto_12
    return v2

    .line 1352
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1357
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2324
    const/4 v0, 0x0

    .line 2329
    .local v0, "cat":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2334
    if-nez v0, :cond_9

    .line 2335
    const/4 v1, 0x0

    .line 2337
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public static isEmergencyNumber(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "simCardId"    # I

    .prologue
    .line 2346
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 2422
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 2476
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static isEmergencyNumberInternal(Ljava/lang/String;Z)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .prologue
    .line 2401
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isExactOrPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 5
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 2681
    if-nez p0, :cond_4

    .line 2687
    :cond_3
    :goto_3
    return v2

    .line 2684
    :cond_4
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 2685
    .local v0, "isExactEmergencyNumber":Z
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    .line 2687
    .local v1, "isPotentialEmergencyNumber":Z
    if-nez v0, :cond_10

    if-eqz v1, :cond_3

    :cond_10
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1339
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1340
    const/4 v1, 0x0

    .line 1344
    :goto_7
    return v1

    .line 1343
    :cond_8
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1344
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_7
.end method

.method public static isISODigit(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 230
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isLTNSpecialNumber(Ljava/lang/String;)Z
    .registers 6
    .param p0, "strNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4593
    const/4 v0, 0x0

    .line 4595
    .local v0, "bIsDigit":Z
    if-nez p0, :cond_5

    .line 4614
    :cond_4
    :goto_4
    return v3

    .line 4600
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_17

    .line 4601
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4602
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 4603
    const/4 v0, 0x1

    .line 4608
    .end local v1    # "c":C
    :cond_17
    if-nez v0, :cond_4

    .line 4614
    const/4 v3, 0x1

    goto :goto_4

    .line 4600
    .restart local v1    # "c":C
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method public static isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2576
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simCardId"    # I

    .prologue
    .line 2583
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z
    .registers 9
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 2650
    const-string v3, "country_detector"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 2652
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 2653
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2671
    .local v0, "countryIso":Ljava/lang/String;
    :goto_18
    invoke-static {p0, v0, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 2655
    .end local v0    # "countryIso":Ljava/lang/String;
    :cond_1d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2662
    .local v2, "locale":Ljava/util/Locale;
    if-eqz v2, :cond_46

    .line 2663
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2664
    .restart local v0    # "countryIso":Ljava/lang/String;
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 2667
    .end local v0    # "countryIso":Ljava/lang/String;
    :cond_46
    const-string v0, "US"

    .restart local v0    # "countryIso":Ljava/lang/String;
    goto :goto_18
.end method

.method private static isNanp(Ljava/lang/String;)Z
    .registers 6
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    .line 3810
    const/4 v2, 0x0

    .line 3811
    .local v2, "retVal":Z
    if-eqz p0, :cond_34

    .line 3812
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_30

    .line 3813
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 3815
    const/4 v2, 0x1

    .line 3816
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_23
    if-ge v1, v4, :cond_30

    .line 3817
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3818
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_31

    .line 3819
    const/4 v2, 0x0

    .line 3828
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_30
    :goto_30
    return v2

    .line 3816
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 3826
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_34
    const-string v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public static final isNonSeparator(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 254
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_20

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_20

    const/16 v0, 0x23

    if-eq p0, v0, :cond_20

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_20

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_20

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_20

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method protected static isNonSeparator(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1362
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 1363
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1364
    const/4 v2, 0x0

    .line 1367
    :goto_12
    return v2

    .line 1362
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1367
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .registers 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 3835
    const/4 v1, 0x0

    .line 3836
    .local v1, "retVal":Z
    if-eqz p0, :cond_19

    .line 3837
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3838
    .local v0, "newDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_18

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3839
    const/4 v1, 0x1

    .line 3844
    .end local v0    # "newDialStr":Ljava/lang/String;
    :cond_18
    :goto_18
    return v1

    .line 3842
    :cond_19
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private static isPause(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 268
    const/16 v0, 0x70

    if-eq p0, v0, :cond_8

    const/16 v0, 0x50

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2375
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 2453
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2617
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simCardId"    # I

    .prologue
    .line 2624
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static final isReallyDialable(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 248
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_14

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_14

    const/16 v0, 0x23

    if-eq p0, v0, :cond_14

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static isSeparator(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 279
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x61

    if-gt v0, p0, :cond_e

    const/16 v0, 0x7a

    if-le p0, v0, :cond_18

    :cond_e
    const/16 v0, 0x41

    if-gt v0, p0, :cond_16

    const/16 v0, 0x5a

    if-le p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static final isStartsPostDial(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 263
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_8

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isToneWait(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 273
    const/16 v0, 0x77

    if-eq p0, v0, :cond_8

    const/16 v0, 0x57

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isTwoToNine(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 3778
    const/16 v0, 0x32

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    .line 3779
    const/4 v0, 0x1

    .line 3781
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 3860
    if-eqz p0, :cond_14

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .registers 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3344
    :try_start_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 3345
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getPreferredVoiceSubscription()I

    move-result v1

    .line 3347
    .local v1, "subscription":I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/telephony/MSimTelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1a} :catch_36

    move-result-object v2

    .line 3357
    .end local v1    # "subscription":I
    .local v2, "vmNumber":Ljava/lang/String;
    :goto_1b
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3361
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-static {p0, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v3, 0x1

    .end local v2    # "vmNumber":Ljava/lang/String;
    :cond_2c
    :goto_2c
    return v3

    .line 3349
    :cond_2d
    :try_start_2d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/SecurityException; {:try_start_2d .. :try_end_34} :catch_36

    move-result-object v2

    .restart local v2    # "vmNumber":Ljava/lang/String;
    goto :goto_1b

    .line 3351
    .end local v2    # "vmNumber":Ljava/lang/String;
    :catch_36
    move-exception v0

    .line 3352
    .local v0, "ex":Ljava/lang/SecurityException;
    goto :goto_2c
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "subscription"    # I

    .prologue
    .line 3367
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVoiceMailNumberForGlobalMode(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 3377
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_8} :catch_1b

    move-result-object v1

    .line 3390
    .local v1, "vmNumber":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3394
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v2, 0x1

    .end local v1    # "vmNumber":Ljava/lang/String;
    :cond_1a
    :goto_1a
    return v2

    .line 3384
    :catch_1b
    move-exception v0

    .line 3385
    .local v0, "ex":Ljava/lang/SecurityException;
    goto :goto_1a
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .registers 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1330
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1333
    .local v0, "networkPortion":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 583
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .registers 10
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4090
    const/4 v2, 0x0

    .line 4091
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, p1, :cond_45

    .line 4092
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4094
    .local v0, "c":C
    packed-switch v2, :pswitch_data_50

    .line 4113
    :pswitch_11
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 4119
    .end local v0    # "c":C
    :cond_17
    :goto_17
    return v3

    .line 4096
    .restart local v0    # "c":C
    :pswitch_18
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_20

    const/4 v2, 0x1

    .line 4091
    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4097
    :cond_20
    if-ne v0, v6, :cond_24

    const/4 v2, 0x2

    goto :goto_1d

    .line 4098
    :cond_24
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_17

    .line 4102
    :pswitch_2b
    if-ne v0, v6, :cond_2f

    const/4 v2, 0x3

    goto :goto_1d

    .line 4103
    :cond_2f
    if-ne v0, v7, :cond_33

    const/4 v2, 0x4

    goto :goto_1d

    .line 4104
    :cond_33
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_17

    .line 4108
    :pswitch_3a
    if-ne v0, v7, :cond_3e

    const/4 v2, 0x5

    goto :goto_1d

    .line 4109
    :cond_3e
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_17

    .line 4119
    .end local v0    # "c":C
    :cond_45
    if-eq v2, v4, :cond_4d

    const/4 v5, 0x3

    if-eq v2, v5, :cond_4d

    const/4 v5, 0x5

    if-ne v2, v5, :cond_17

    :cond_4d
    move v3, v4

    goto :goto_17

    .line 4094
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_18
        :pswitch_11
        :pswitch_2b
        :pswitch_11
        :pswitch_3a
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .registers 9
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v3, 0x0

    .line 4129
    const/4 v2, 0x0

    .line 4130
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, p1, :cond_63

    .line 4131
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4133
    .local v0, "c":C
    packed-switch v2, :pswitch_data_70

    .line 4165
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 4169
    .end local v0    # "c":C
    :cond_16
    :goto_16
    return v3

    .line 4135
    .restart local v0    # "c":C
    :pswitch_17
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_1f

    const/4 v2, 0x1

    .line 4130
    :cond_1c
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4136
    :cond_1f
    if-ne v0, v5, :cond_23

    const/4 v2, 0x2

    goto :goto_1c

    .line 4137
    :cond_23
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 4141
    :pswitch_2a
    if-ne v0, v5, :cond_2e

    const/4 v2, 0x3

    goto :goto_1c

    .line 4142
    :cond_2e
    if-ne v0, v6, :cond_32

    const/4 v2, 0x4

    goto :goto_1c

    .line 4143
    :cond_32
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 4147
    :pswitch_39
    if-ne v0, v6, :cond_3d

    const/4 v2, 0x5

    goto :goto_1c

    .line 4148
    :cond_3d
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 4154
    :pswitch_44
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v2, 0x6

    goto :goto_1c

    .line 4155
    :cond_4c
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 4160
    :pswitch_53
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_5c

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 4161
    :cond_5c
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 4169
    .end local v0    # "c":C
    :cond_63
    const/4 v4, 0x6

    if-eq v2, v4, :cond_6d

    const/4 v4, 0x7

    if-eq v2, v4, :cond_6d

    const/16 v4, 0x8

    if-ne v2, v4, :cond_16

    :cond_6d
    const/4 v3, 0x1

    goto :goto_16

    .line 4133
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_17
        :pswitch_44
        :pswitch_2a
        :pswitch_44
        :pswitch_39
        :pswitch_44
        :pswitch_53
        :pswitch_53
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .registers 6
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 4177
    const/4 v1, 0x0

    .line 4179
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, p1, :cond_19

    .line 4180
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4182
    .local v0, "c":C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_12

    if-nez v1, :cond_12

    .line 4183
    const/4 v1, 0x1

    .line 4179
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4184
    :cond_12
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4185
    const/4 v1, 0x0

    .line 4189
    .end local v0    # "c":C
    .end local v1    # "found":Z
    :cond_19
    return v1
.end method

.method private static minPositive(II)I
    .registers 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 570
    if-ltz p0, :cond_9

    if-ltz p1, :cond_9

    .line 571
    if-ge p0, p1, :cond_7

    .line 577
    .end local p0    # "a":I
    :cond_6
    :goto_6
    return p0

    .restart local p0    # "a":I
    :cond_7
    move p0, p1

    .line 571
    goto :goto_6

    .line 572
    :cond_9
    if-gez p0, :cond_6

    .line 574
    if-ltz p1, :cond_f

    move p0, p1

    .line 575
    goto :goto_6

    .line 577
    :cond_f
    const/4 p0, -0x1

    goto :goto_6
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1377
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1378
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1400
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1401
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 2247
    if-nez p0, :cond_a

    .line 2248
    const-string/jumbo v5, "normalizeNumber(): phoneNumber is null"

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2249
    const/4 v5, 0x0

    .line 2267
    :goto_9
    return-object v5

    .line 2251
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2252
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2253
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v3, :cond_54

    .line 2254
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2256
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 2257
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_29

    .line 2258
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2253
    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 2260
    :cond_29
    if-nez v2, :cond_2f

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_37

    :cond_2f
    const/16 v5, 0x2a

    if-eq v0, v5, :cond_37

    const/16 v5, 0x23

    if-ne v0, v5, :cond_3b

    .line 2262
    :cond_37
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 2263
    :cond_3b
    const/16 v5, 0x61

    if-lt v0, v5, :cond_43

    const/16 v5, 0x7a

    if-le v0, v5, :cond_4b

    :cond_43
    const/16 v5, 0x41

    if-lt v0, v5, :cond_26

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_26

    .line 2264
    :cond_4b
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    .line 2267
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1413
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .registers 17
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z

    .prologue
    .line 1423
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1424
    const/4 v9, 0x0

    .line 1457
    :goto_7
    return-object v9

    .line 1427
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1428
    .local v6, "numberLenReal":I
    move v5, v6

    .line 1429
    .local v5, "numberLenEffective":I
    const/16 v12, 0x2b

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1f

    const/4 v3, 0x1

    .line 1430
    .local v3, "hasPlus":Z
    :goto_17
    if-eqz v3, :cond_1b

    add-int/lit8 v5, v5, -0x1

    .line 1432
    :cond_1b
    if-nez v5, :cond_21

    const/4 v9, 0x0

    goto :goto_7

    .line 1429
    .end local v3    # "hasPlus":Z
    :cond_1f
    const/4 v3, 0x0

    goto :goto_17

    .line 1434
    .restart local v3    # "hasPlus":Z
    :cond_21
    add-int/lit8 v12, v5, 0x1

    div-int/lit8 v10, v12, 0x2

    .line 1435
    .local v10, "resultLen":I
    const/4 v2, 0x1

    .line 1436
    .local v2, "extraBytes":I
    if-eqz p1, :cond_2a

    add-int/lit8 v2, v2, 0x1

    .line 1437
    :cond_2a
    add-int/2addr v10, v2

    .line 1439
    new-array v9, v10, [B

    .line 1441
    .local v9, "result":[B
    const/4 v1, 0x0

    .line 1442
    .local v1, "digitCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2f
    if-ge v4, v6, :cond_58

    .line 1443
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1444
    .local v0, "c":C
    const/16 v12, 0x2b

    if-ne v0, v12, :cond_3c

    .line 1442
    :goto_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 1445
    :cond_3c
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_56

    const/4 v11, 0x4

    .line 1446
    .local v11, "shift":I
    :goto_42
    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v14

    and-int/lit8 v14, v14, 0xf

    shl-int/2addr v14, v11

    int-to-byte v14, v14

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1447
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 1445
    .end local v11    # "shift":I
    :cond_56
    const/4 v11, 0x0

    goto :goto_42

    .line 1451
    .end local v0    # "c":C
    :cond_58
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_67

    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1453
    :cond_67
    const/4 v7, 0x0

    .line 1454
    .local v7, "offset":I
    if-eqz p1, :cond_72

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    add-int/lit8 v12, v10, -0x1

    int-to-byte v12, v12

    aput-byte v12, v9, v7

    move v7, v8

    .line 1455
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :cond_72
    if-eqz v3, :cond_7a

    const/16 v12, 0x91

    :goto_76
    int-to-byte v12, v12

    aput-byte v12, v9, v7

    goto :goto_7

    :cond_7a
    const/16 v12, 0x81

    goto :goto_76
.end method

.method public static processCLIRDigitsWithinNetworkDial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sDialNumber"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x38

    const/16 v9, 0x31

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5800
    const/4 v2, 0x0

    .line 5801
    .local v2, "sNetworkDial":Ljava/lang/String;
    const/4 v0, 0x0

    .line 5802
    .local v0, "isCheck":Z
    const/4 v1, 0x0

    .line 5803
    .local v1, "isEmergencyCall":Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 5805
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionchangePlusCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5806
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 5807
    const-string v4, "button_clir_key"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5809
    if-nez v0, :cond_5b

    if-nez v1, :cond_5b

    .line 5810
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_34

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_34

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x34

    if-eq v4, v5, :cond_5b

    :cond_34
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_48

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_48

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x36

    if-eq v4, v5, :cond_5b

    .line 5812
    :cond_48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "184"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5815
    :cond_5b
    const-string v4, "PhoneNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PhoneNumberUtils.java]sNetworkDial["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5816
    return-object v2
.end method

.method private static processPlusCodeWithinNanp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkDialStr"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 3928
    const/4 v2, 0x0

    .line 3929
    .local v2, "retStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3930
    .local v1, "newStr":Ljava/lang/String;
    if-eqz p1, :cond_a

    .line 3931
    move-object v2, p1

    .line 3932
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3939
    :cond_a
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3940
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string v6, "country_code"

    const-string v7, "011"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3941
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v6, "toggle_country_name"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3944
    .local v0, "isChecked":Z
    const/4 v3, 0x0

    .line 3945
    .local v3, "sCountry":Ljava/lang/String;
    const-string v6, "gsm.operator.iso-country"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3966
    if-eqz p1, :cond_44

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_44

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_44

    .line 3970
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDefaultPlusCode(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_45

    if-eqz v0, :cond_45

    .line 3972
    move-object v2, v1

    .line 3980
    :cond_44
    :goto_44
    return-object v2

    .line 3976
    :cond_45
    const-string v6, "[+]"

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_44
.end method

.method private static processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "networkDialStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 3895
    move-object v2, p0

    .line 3900
    .local v2, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_1e

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1e

    .line 3903
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3904
    .local v1, "newStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 3906
    move-object v2, v1

    .line 3914
    .end local v1    # "newStr":Ljava/lang/String;
    :cond_1e
    :goto_1e
    return-object v2

    .line 3908
    .restart local v1    # "newStr":Ljava/lang/String;
    :cond_1f
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultIdp()Ljava/lang/String;

    move-result-object v0

    .line 3910
    .local v0, "idpStr":Ljava/lang/String;
    const-string v3, "[+]"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e
.end method

.method private static processPlusCodeWithinNanp(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "networkDialStr"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 3985
    move-object v2, p0

    .line 3990
    .local v2, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_1e

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1e

    .line 3993
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 4024
    .local v1, "newStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4026
    move-object v2, v1

    .line 4035
    .end local v1    # "newStr":Ljava/lang/String;
    :cond_1e
    :goto_1e
    return-object v2

    .line 4028
    .restart local v1    # "newStr":Ljava/lang/String;
    :cond_1f
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultIdp()Ljava/lang/String;

    move-result-object v0

    .line 4030
    .local v0, "idpStr":Ljava/lang/String;
    const-string v3, "[+]"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .registers 4
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 2095
    const/4 v0, 0x0

    .line 2096
    .local v0, "p":I
    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 2097
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_15

    .line 2098
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 2100
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2103
    :cond_18
    return-void
.end method

.method public static replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2280
    .local v5, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_f
    if-ge v3, v4, :cond_26

    aget-char v1, v0, v3

    .line 2281
    .local v1, "c":C
    const/16 v6, 0xa

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 2282
    .local v2, "digit":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_22

    .line 2283
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2280
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2285
    :cond_22
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 2288
    .end local v1    # "c":C
    .end local v2    # "digit":I
    :cond_26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 14
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 5207
    const-string v1, "gsm.current.phone-type"

    invoke-static {v1, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/telephony/PhoneNumberUtils;->phoneType:I

    .line 5209
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sput v1, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    .line 5211
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    .line 5214
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    .line 5216
    .local v6, "mdn":Ljava/lang/String;
    if-eqz v6, :cond_42

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v10, :cond_42

    .line 5318
    :cond_41
    :goto_41
    return v9

    .line 5221
    :cond_42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5224
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    .line 5225
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_41

    .line 5230
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5234
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    .line 5235
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5236
    .local v7, "refmcc":Ljava/lang/String;
    const-string v1, "310 to 316"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a4

    const-string v7, "310"

    .end local v7    # "refmcc":Ljava/lang/String;
    :cond_72
    :goto_72
    sput-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    .line 5237
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    .line 5238
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    .line 5239
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "NANP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    move v1, v8

    :goto_95
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    .line 5240
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    .line 5241
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    .line 5243
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0x8

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    .line 5244
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0x9

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    .line 5246
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    if-nez v1, :cond_d7

    .line 5247
    if-eqz v6, :cond_1b3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v10, :cond_1b3

    .line 5248
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    .line 5255
    :cond_d7
    :goto_d7
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    if-nez v1, :cond_ed

    .line 5256
    if-eqz v6, :cond_1b9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v10, :cond_1b9

    .line 5257
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    .line 5264
    :cond_ed
    :goto_ed
    const-string v1, "PhoneNumberUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refCountryMCC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5265
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5267
    sget v1, Landroid/telephony/PhoneNumberUtils;->phoneType:I

    if-ne v1, v8, :cond_1c3

    move v1, v8

    :goto_112
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 5268
    sget v1, Landroid/telephony/PhoneNumberUtils;->phoneType:I

    if-ne v1, v11, :cond_1c6

    move v1, v8

    :goto_119
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 5270
    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    .line 5272
    sput-object v2, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 5273
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_18e

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 5274
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    .line 5275
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 5277
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 5278
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    .line 5279
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    if-nez v1, :cond_158

    .line 5280
    const-string v1, ""

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    .line 5283
    :cond_158
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NANP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c9

    move v1, v8

    :goto_168
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    .line 5284
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    .line 5285
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isOTANBPCDSupported:Z

    .line 5286
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    const-string v2, "310 to 316"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cb

    const-string v1, "310"

    :goto_18c
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 5289
    :cond_18e
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_197

    .line 5290
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5293
    :cond_197
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    if-nez v1, :cond_1db

    .line 5294
    const-string v1, "PhoneNumberUtils"

    const-string v2, "OTA country not found"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 5236
    .restart local v7    # "refmcc":Ljava/lang/String;
    :cond_1a4
    const-string v1, "430 to 431"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    const-string v7, "430"

    goto/16 :goto_72

    .end local v7    # "refmcc":Ljava/lang/String;
    :cond_1b0
    move v1, v9

    .line 5239
    goto/16 :goto_95

    .line 5251
    :cond_1b3
    const-string v1, "123"

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    goto/16 :goto_d7

    .line 5260
    :cond_1b9
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    goto/16 :goto_ed

    :cond_1c3
    move v1, v9

    .line 5267
    goto/16 :goto_112

    :cond_1c6
    move v1, v9

    .line 5268
    goto/16 :goto_119

    :cond_1c9
    move v1, v9

    .line 5283
    goto :goto_168

    .line 5286
    :cond_1cb
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    const-string v2, "430 to 431"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d8

    const-string v1, "430"

    goto :goto_18c

    :cond_1d8
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    goto :goto_18c

    .line 5298
    :cond_1db
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " refCountryName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refCountryMCC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refCountryIDDPrefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refCountryNDDPrefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refCountryAreaCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refCountryNationalNumberLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isNANPCountry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refCountryCountryCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isNBPCDSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/PhoneNumberUtils;->isNBPCDSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isGSMRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isCDMARegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5309
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isNetRoaming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " numberLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " otaCountryName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " otaCountryMCC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " otaCountryIDDPrefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " otaCountryNDDPrefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isOTANANPCountry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " otaCountryCountryCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isOTANBPCDSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/PhoneNumberUtils;->isOTANBPCDSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 5318
    goto/16 :goto_41
.end method

.method private static startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 9
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 5532
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_33

    .line 5533
    const-string v1, "7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "20"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "65"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "90"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 5535
    :cond_2a
    const-string v1, "PhoneNumberUtils"

    const-string v2, "length 12 - 7,20,65,90 is detected"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 5567
    :goto_32
    return v1

    .line 5540
    :cond_33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xb

    if-lt v1, v3, :cond_96

    .line 5542
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 5543
    const-string v1, "PhoneNumberUtils"

    const-string v2, "US country code is detected with more than 11 digits"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 5544
    goto :goto_32

    .line 5547
    :cond_4c
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5549
    .local v0, "ContryCode":Landroid/content/ContentResolver;
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    .line 5551
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5552
    :goto_60
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    if-eqz v1, :cond_8d

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 5553
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 5554
    const-string v1, "PhoneNumberUtils"

    const-string v2, "contry code is detected"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5555
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5556
    const/4 v1, 0x1

    goto :goto_32

    .line 5558
    :cond_87
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_60

    .line 5561
    :cond_8d
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    if-eqz v1, :cond_96

    .line 5562
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorContry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v0    # "ContryCode":Landroid/content/ContentResolver;
    :cond_96
    move v1, v6

    .line 5567
    goto :goto_32
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "TOA"    # I

    .prologue
    .line 1075
    if-nez p0, :cond_4

    const/4 p0, 0x0

    .line 1081
    .end local p0    # "s":Ljava/lang/String;
    :cond_3
    :goto_3
    return-object p0

    .line 1077
    .restart local p0    # "s":Ljava/lang/String;
    :cond_4
    const/16 v0, 0x91

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 507
    if-nez p0, :cond_4

    .line 508
    const/4 v5, 0x0

    .line 524
    :goto_3
    return-object v5

    .line 510
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 511
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 513
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v3, :cond_2d

    .line 514
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 516
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 517
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_23

    .line 518
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 513
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 519
    :cond_23
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 520
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 524
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1009
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, "np":Ljava/lang/String;
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, "salesCode":Ljava/lang/String;
    const-string v2, "CHN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "CHU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "CHM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "CTC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "CHC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1016
    :cond_33
    const/16 v2, 0xb

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1024
    :goto_39
    return-object v2

    .line 1018
    :cond_3a
    const-string v2, "FET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    const-string v2, "TWM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    const-string v2, "CWT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    const-string v2, "BRI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1019
    :cond_5a
    const/16 v2, 0x9

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .line 1021
    :cond_61
    const-string v2, "TGY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 1022
    const/16 v2, 0x8

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .line 1024
    :cond_70
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_39
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1091
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_14

    .line 1092
    const/16 v0, 0x91

    .line 1095
    :goto_13
    return v0

    :cond_14
    const/16 v0, 0x81

    goto :goto_13
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .registers 13
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "acceptThailandCase"    # Z

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v6, 0x0

    .line 4256
    const/4 v5, 0x0

    .line 4257
    .local v5, "state":I
    const/4 v0, 0x0

    .line 4258
    .local v0, "ccc":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 4259
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v3, :cond_17

    .line 4260
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4261
    .local v1, "ch":C
    packed-switch v5, :pswitch_data_96

    .line 4330
    .end local v1    # "ch":C
    :cond_17
    :goto_17
    return-object v6

    .line 4263
    .restart local v1    # "ch":C
    :pswitch_18
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_20

    const/4 v5, 0x1

    .line 4259
    :cond_1d
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 4264
    :cond_20
    if-ne v1, v9, :cond_24

    const/4 v5, 0x2

    goto :goto_1d

    .line 4265
    :cond_24
    if-ne v1, v8, :cond_2b

    .line 4266
    if-eqz p1, :cond_17

    .line 4267
    const/16 v5, 0x8

    goto :goto_1d

    .line 4271
    :cond_2b
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 4277
    :pswitch_32
    if-ne v1, v9, :cond_36

    const/4 v5, 0x3

    goto :goto_1d

    .line 4278
    :cond_36
    if-ne v1, v8, :cond_3a

    const/4 v5, 0x4

    goto :goto_1d

    .line 4279
    :cond_3a
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 4285
    :pswitch_41
    if-ne v1, v8, :cond_45

    const/4 v5, 0x5

    goto :goto_1d

    .line 4286
    :cond_45
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 4297
    :pswitch_4c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 4298
    .local v4, "ret":I
    if-lez v4, :cond_76

    .line 4299
    mul-int/lit8 v7, v0, 0xa

    add-int v0, v7, v4

    .line 4300
    const/16 v7, 0x64

    if-ge v0, v7, :cond_60

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 4301
    :cond_60
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_17

    .line 4303
    :cond_68
    const/4 v7, 0x1

    if-eq v5, v7, :cond_71

    const/4 v7, 0x3

    if-eq v5, v7, :cond_71

    const/4 v7, 0x5

    if-ne v5, v7, :cond_73

    .line 4304
    :cond_71
    const/4 v5, 0x6

    goto :goto_1d

    .line 4306
    :cond_73
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 4308
    :cond_76
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 4314
    .end local v4    # "ret":I
    :pswitch_7d
    if-ne v1, v10, :cond_82

    const/16 v5, 0x9

    goto :goto_1d

    .line 4315
    :cond_82
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 4320
    :pswitch_89
    if-ne v1, v10, :cond_17

    .line 4321
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_17

    .line 4261
    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_18
        :pswitch_4c
        :pswitch_32
        :pswitch_4c
        :pswitch_41
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_7d
        :pswitch_89
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 4227
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 4228
    add-int/lit8 v0, p0, -0x30

    .line 4230
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 4343
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4344
    .local v2, "length":I
    move v1, p1

    .local v1, "i":I
    :goto_6
    if-ge v1, v2, :cond_14

    .line 4345
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4346
    .local v0, "ch":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_15

    .line 4347
    add-int/lit8 v3, v1, 0x1

    .line 4352
    .end local v0    # "ch":C
    :cond_14
    return v3

    .line 4348
    .restart local v0    # "ch":C
    :cond_15
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-nez v4, :cond_14

    .line 4344
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method
