.class public Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
.super Ljava/lang/Object;
.source "PhoneBookManageSim.java"


# static fields
.field public static final ADN2_URI:Landroid/net/Uri;

.field static final ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

.field public static final ADN_URI:Landroid/net/Uri;

.field public static final ANR_A_INDEX:I = 0x1

.field public static final ANR_B_INDEX:I = 0x2

.field public static final ANR_C_INDEX:I = 0x3

.field public static final ANR_INDEX:I = 0x0

.field public static final ANR_MAX_INDEX:I = 0x4

.field static final CARD_ICON_ID_COLUMN_INDEX:I = 0x2

.field static final CARD_ID_COLUMN_INDEX:I = 0x0

.field static final CARD_NAME_COLUMN_INDEX:I = 0x1

.field private static final CURRENTCARDSTATUS:Ljava/lang/String; = "gsm.sim.currentcardstatus"

.field private static final CURRENTCARDSTATUS2:Ljava/lang/String; = "gsm.sim.currentcardstatus2"

.field static final DATA_DATA1_COLUMN_INDEX:I = 0x3

.field static final DATA_DATA2_COLUMN_INDEX:I = 0x4

.field static final DATA_ID_COLUMN_INDEX:I = 0x0

.field static final DATA_IS_PRIMARY_COLUMN_INDEX:I = 0x2

.field static final DATA_MIMETYPE_COLUMN_INDEX:I = 0x1

.field static final DATA_PROJECTION:[Ljava/lang/String;

.field static final DATA_PROJECTION2:[Ljava/lang/String;

.field static final DATA_PROJECTION_CONTACTS:[Ljava/lang/String;

.field public static final DATA_URI:Landroid/net/Uri;

.field private static final DUAL:Ljava/lang/String; = "4"

.field public static final EF_ADN:I = 0x6f3a

.field private static final PREFERRED_SIM_ASK_ALWAYS:I = 0x1

.field private static final PREFERRED_SIM_CURRENT_NETWORK:I = 0x0

.field private static final PREFERRED_SIM_SIM1:I = 0x2

.field private static final PREFERRED_SIM_SIM2:I = 0x3

.field public static final RAWCONTACT_URI:Landroid/net/Uri;

.field static final RAW_CONTACT_ID_COLUMN_INDEX:I = 0x4

.field static final REGISTERINFO_PROJECTION:[Ljava/lang/String;

.field public static final REGISTERINFO_URI:Landroid/net/Uri;

.field private static final RUIMG:Ljava/lang/String; = "3"

.field private static final SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

.field private static final Slot1Index:I = 0x0

.field private static final Slot2Index:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhoneBookManageSim"

.field private static final TAG2:Ljava/lang/String; = "PhoneBookManageSim2"

.field private static final THREEG:Ljava/lang/String; = "2"

.field private static final TWOG:Ljava/lang/String; = "1"

.field private static isDualStandbyFirstCheck:[Z

.field public static isFirstCheck:Z

.field public static isFirstCheck2:Z

.field public static isFirstCheckSimIcon:Z

.field public static isFirstCheckSimPopupIcon:Z

.field public static mAnrFieldCount:I

.field public static mAnrFieldCount2:I

.field private static mAnrLength:[I

.field private static mAnrLength2:[I

.field private static mAnrMaxIndex:[I

.field private static mAnrMaxIndex2:[I

.field private static mAnrUsedIndex:[I

.field private static mAnrUsedIndex2:[I

.field private static mContext:Landroid/content/Context;

.field private static mCurrentSimState:I

.field private static mCurrentSimState2:I

.field private static mCurrentSlotSwitchingState:Z

.field private static mDualStandbyCurrentSimState:[I

.field private static mDualStandbyEmailLength:[I

.field private static mDualStandbyEmailMaxIndex:[I

.field private static mDualStandbyEmailUsedIndex:[I

.field private static mDualStandbyMaxCount:[I

.field private static mDualStandbyNameLength:[I

.field private static mDualStandbyNumberLength:[I

.field private static mDualStandbySimType:[Ljava/lang/String;

.field private static mDualStandbyUsedCount:[I

.field private static mEmailLength:I

.field private static mEmailLength2:I

.field private static mEmailMaxIndex:I

.field private static mEmailMaxIndex2:I

.field private static mEmailUsedIndex:I

.field private static mEmailUsedIndex2:I

.field private static mMaxCount:I

.field private static mMaxCount2:I

.field private static mNameLength:I

.field private static mNameLength2:I

.field private static mNumberLength:I

.field private static mNumberLength2:I

.field private static mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

.field private static mSim1Info:[Ljava/lang/String;

.field private static mSim2Info:[Ljava/lang/String;

.field private static mSim2Type:Ljava/lang/String;

.field private static mSimInfoChanged:Z

.field private static mSimType:Ljava/lang/String;

.field private static mTelMan:Landroid/telephony/TelephonyManager;

.field private static mUsedCount:I

.field private static mUsedCount2:I

.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private final ANRNUMBER:Ljava/lang/String;

.field private final ANRNUMBER_A:Ljava/lang/String;

.field private final ANRNUMBER_B:Ljava/lang/String;

.field private final ANRNUMBER_C:Ljava/lang/String;

.field public final COPY_SUCCESS:I

.field private final EMAIL:Ljava/lang/String;

.field private final NAME:Ljava/lang/String;

.field public final NULL_CONTACT_ERROR:I

.field public final NULL_CURSOR_ERROR:I

.field private final NUMBER:Ljava/lang/String;

.field private final SIM_ONE:I

.field private final SIM_ZERO:I

.field public final WRITE_SIM_ERROR:I

.field private mIconChanged:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 88
    const-string v0, "content://com.android.contacts/raw_contacts/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_URI:Landroid/net/Uri;

    .line 89
    const-string v0, "content://com.android.contacts/data/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    .line 90
    const-string v0, "content://com.android.contacts/raw_contacts/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->RAWCONTACT_URI:Landroid/net/Uri;

    .line 92
    const-string v0, "content://com.android.contacts/raw_contacts/adn2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN2_URI:Landroid/net/Uri;

    .line 107
    const-string v0, "content://com.sec.provider.simcardmanagement/registerinfo/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->REGISTERINFO_URI:Landroid/net/Uri;

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CARD_ID"

    aput-object v1, v0, v6

    const-string v1, "CARD_NAME"

    aput-object v1, v0, v5

    const-string v1, "ICON_INDEX"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->REGISTERINFO_PROJECTION:[Ljava/lang/String;

    .line 120
    new-array v0, v4, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isDualStandbyFirstCheck:[Z

    .line 122
    new-array v0, v4, [Ljava/lang/String;

    aput-object v7, v0, v6

    aput-object v7, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbySimType:[Ljava/lang/String;

    .line 124
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbyCurrentSimState:[I

    .line 126
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbyMaxCount:[I

    .line 127
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbyUsedCount:[I

    .line 128
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbyNameLength:[I

    .line 129
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbyNumberLength:[I

    .line 130
    new-array v0, v4, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbyEmailLength:[I

    .line 131
    new-array v0, v4, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbyEmailMaxIndex:[I

    .line 132
    new-array v0, v4, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mDualStandbyEmailUsedIndex:[I

    .line 134
    new-array v0, v4, [Ljava/lang/String;

    aput-object v7, v0, v6

    aput-object v7, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim1Info:[Ljava/lang/String;

    .line 135
    new-array v0, v4, [Ljava/lang/String;

    aput-object v7, v0, v6

    aput-object v7, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Info:[Ljava/lang/String;

    .line 138
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "mimetype"

    aput-object v1, v0, v5

    const-string v1, "is_primary"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    .line 146
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "name_raw_contact_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION_CONTACTS:[Ljava/lang/String;

    .line 149
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "mimetype"

    aput-object v1, v0, v5

    const-string v1, "is_primary"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION2:[Ljava/lang/String;

    .line 157
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    .line 169
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "adn_index"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    .line 176
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->sEmptyContentValues:Landroid/content/ContentValues;

    .line 178
    sput-object v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    .line 180
    sput-boolean v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 181
    sput-boolean v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 183
    sput-object v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 184
    sput-object v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    .line 186
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    .line 187
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState2:I

    .line 189
    sput-boolean v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheckSimIcon:Z

    .line 190
    sput-boolean v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheckSimPopupIcon:Z

    .line 192
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    .line 193
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    .line 194
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    .line 195
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    .line 196
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    .line 197
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    .line 198
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    .line 200
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    .line 201
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    .line 202
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    .line 210
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    .line 211
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount2:I

    .line 213
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    .line 214
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    .line 215
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    .line 216
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    .line 217
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    .line 218
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex2:I

    .line 219
    sput v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    .line 221
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    .line 222
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    .line 223
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength2:[I

    .line 230
    sput-boolean v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimInfoChanged:Z

    .line 231
    sput-boolean v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSlotSwitchingState:Z

    return-void

    .line 120
    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 124
    nop

    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 126
    :array_2
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 127
    :array_3
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 128
    :array_4
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 129
    :array_5
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 130
    :array_6
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 131
    :array_7
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 132
    :array_8
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 200
    :array_9
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 201
    :array_a
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 202
    :array_b
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 221
    :array_c
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 222
    :array_d
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 223
    :array_e
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, "tag"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->NAME:Ljava/lang/String;

    .line 80
    const-string v0, "number"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->NUMBER:Ljava/lang/String;

    .line 81
    const-string v0, "emails"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->EMAIL:Ljava/lang/String;

    .line 83
    const-string v0, "AnrNumber"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ANRNUMBER:Ljava/lang/String;

    .line 84
    const-string v0, "AnrANumber"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ANRNUMBER_A:Ljava/lang/String;

    .line 85
    const-string v0, "AnrBNumber"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ANRNUMBER_B:Ljava/lang/String;

    .line 86
    const-string v0, "AnrCNumber"

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ANRNUMBER_C:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->SIM_ZERO:I

    .line 100
    iput v1, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->SIM_ONE:I

    .line 225
    iput v1, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->COPY_SUCCESS:I

    .line 226
    const/4 v0, -0x3

    iput v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->NULL_CURSOR_ERROR:I

    .line 227
    const/4 v0, -0x2

    iput v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->NULL_CONTACT_ERROR:I

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->WRITE_SIM_ERROR:I

    .line 229
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    .line 248
    sput-object p1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    .line 249
    return-void

    .line 229
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private chkChinese(C)Z
    .locals 1
    .param p1, "text"    # C

    .prologue
    .line 910
    const/16 v0, 0x31bf

    if-gt p1, v0, :cond_0

    const/16 v0, 0x31a0

    if-ge p1, v0, :cond_3

    :cond_0
    const v0, 0x9fcf

    if-gt p1, v0, :cond_1

    const/16 v0, 0x4e00

    if-ge p1, v0, :cond_3

    :cond_1
    const v0, 0xfaff

    if-gt p1, v0, :cond_2

    const v0, 0xf900

    if-ge p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x2fdf

    if-gt p1, v0, :cond_4

    const/16 v0, 0x2f00

    if-lt p1, v0, :cond_4

    .line 912
    :cond_3
    const/4 v0, 0x1

    .line 914
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private chkKorean(C)Z
    .locals 1
    .param p1, "text"    # C

    .prologue
    .line 901
    const v0, 0xd7a3

    if-gt p1, v0, :cond_0

    const v0, 0xac00

    if-ge p1, v0, :cond_4

    :cond_0
    const/16 v0, 0x11ff

    if-gt p1, v0, :cond_1

    const/16 v0, 0x1100

    if-ge p1, v0, :cond_4

    :cond_1
    const v0, 0xd7fb

    if-gt p1, v0, :cond_2

    const v0, 0xd7b0

    if-ge p1, v0, :cond_4

    :cond_2
    const v0, 0xa97c

    if-gt p1, v0, :cond_3

    const v0, 0xa960

    if-ge p1, v0, :cond_4

    :cond_3
    const/16 v0, 0x318e

    if-gt p1, v0, :cond_5

    const/16 v0, 0x3130

    if-lt p1, v0, :cond_5

    .line 904
    :cond_4
    const/4 v0, 0x1

    .line 906
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteItemByContactsId(J)Z
    .locals 4
    .param p1, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 2850
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2851
    .local v0, "uri":Landroid/net/Uri;
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2852
    const/4 v1, 0x1

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    .line 243
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mPhoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    return-object v0
.end method

.method private isWifi()Z
    .locals 3

    .prologue
    .line 2542
    const-string v0, "SIM TEST"

    const-string v1, "isWifi()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2544
    const-string v0, "SIM TEST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    const-string v0, "SIM TEST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSmsCapable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsCapable(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    const-string v0, "SIM TEST"

    const-string v1, "isWifi() return true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    const/4 v0, 0x1

    .line 2550
    :goto_0
    return v0

    .line 2549
    :cond_0
    const-string v0, "SIM TEST"

    const-string v1, "isWifi() return false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public SpecialCharOffset(Ljava/lang/String;)I
    .locals 13
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 834
    const/4 v0, 0x0

    .line 835
    .local v0, "charIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 836
    .local v5, "sz":I
    const/4 v1, 0x0

    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "one_byte_turksh_char":I
    const/4 v7, 0x0

    .local v7, "two_byte_turksh_char":I
    const/4 v6, 0x0

    .local v6, "turksh_char_count":I
    const/4 v8, 0x3

    .line 837
    .local v8, "ucs_header":I
    const/4 v3, 0x0

    .line 840
    .local v3, "isEncodable":Z
    const/4 v10, 0x1

    :try_start_0
    invoke-static {p1, v10}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    const/4 v3, 0x1

    .line 846
    :goto_0
    const-string v10, "PhoneBookManageSim"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SpecialCharOffset, isEncodable : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    if-nez v3, :cond_1

    .line 866
    :cond_0
    :goto_1
    return v9

    .line 842
    :catch_0
    move-exception v2

    .line 843
    .local v2, "ex":Lcom/android/internal/telephony/EncodeException;
    const/4 v3, 0x0

    goto :goto_0

    .line 851
    .end local v2    # "ex":Lcom/android/internal/telephony/EncodeException;
    :cond_1
    :goto_2
    if-ge v0, v5, :cond_5

    .line 852
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xc7

    if-ne v10, v11, :cond_3

    .line 853
    add-int/lit8 v6, v6, 0x1

    .line 854
    add-int/lit8 v4, v4, 0x1

    .line 860
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 855
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x11e

    if-eq v10, v11, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x130

    if-ne v10, v11, :cond_2

    .line 856
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 857
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 862
    :cond_5
    const-string v10, "PhoneBookManageSim"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "turksh_char_count : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    if-eqz v6, :cond_0

    .line 866
    sub-int v9, v8, v7

    goto :goto_1
.end method

.method public areMultiLinesAvailable()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3860
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3862
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3871
    :cond_0
    :goto_0
    return v3

    .line 3865
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "0"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone1_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 3867
    .local v0, "isSim1LineAvailable":Z
    :goto_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "0"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone2_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    move v1, v2

    .line 3869
    .local v1, "isSim2LineAvailable":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    :goto_3
    move v3, v2

    goto :goto_0

    .end local v0    # "isSim1LineAvailable":Z
    .end local v1    # "isSim2LineAvailable":Z
    :cond_2
    move v0, v3

    .line 3865
    goto :goto_1

    .restart local v0    # "isSim1LineAvailable":Z
    :cond_3
    move v1, v3

    .line 3867
    goto :goto_2

    .restart local v1    # "isSim2LineAvailable":Z
    :cond_4
    move v2, v3

    .line 3869
    goto :goto_3
.end method

.method public copyToPhone(JLjava/lang/String;Ljava/lang/String;Z)Z
    .locals 35
    .param p1, "contactId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "isActionMove"    # Z

    .prologue
    .line 1066
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v9

    .line 1067
    .local v9, "anrConfigValue":I
    const/16 v19, 0x0

    .local v19, "dataCursor":Landroid/database/Cursor;
    const/16 v24, 0x0

    .line 1069
    .local v24, "emailCursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KDDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1072
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/util/Constants;->ADN_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1073
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/util/Constants;->ADN_EMAILS_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "emails"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "adn_index"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 1081
    :goto_0
    const/16 v29, 0x0

    .line 1082
    .local v29, "name":Ljava/lang/String;
    const/16 v30, 0x0

    .line 1083
    .local v30, "number":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1086
    .local v21, "email":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1087
    .local v8, "adn_index":Ljava/lang/String;
    const/16 v25, 0x0

    .line 1089
    .local v25, "email_adn_index":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1090
    .local v11, "anr_number1":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1091
    .local v12, "anr_number2":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1092
    .local v13, "anr_number3":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1093
    .local v14, "anr_number4":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1094
    .local v10, "anrNumberCount":I
    const/16 v23, 0x0

    .line 1096
    .local v23, "emailAddressArray":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KDDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1099
    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 1100
    move-wide/from16 v0, p1

    long-to-int v2, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1101
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1102
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1103
    const-string v2, "adn_index"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1107
    :cond_2
    if-eqz v24, :cond_f

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_f

    .line 1108
    :cond_3
    :goto_1
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1109
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1110
    if-eqz v8, :cond_3

    if-eqz v25, :cond_3

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1111
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1112
    if-eqz v21, :cond_5

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1113
    const-string v2, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    goto :goto_1

    .line 1077
    .end local v8    # "adn_index":Ljava/lang/String;
    .end local v10    # "anrNumberCount":I
    .end local v11    # "anr_number1":Ljava/lang/String;
    .end local v12    # "anr_number2":Ljava/lang/String;
    .end local v13    # "anr_number3":Ljava/lang/String;
    .end local v14    # "anr_number4":Ljava/lang/String;
    .end local v21    # "email":Ljava/lang/String;
    .end local v23    # "emailAddressArray":[Ljava/lang/String;
    .end local v25    # "email_adn_index":Ljava/lang/String;
    .end local v29    # "name":Ljava/lang/String;
    .end local v30    # "number":Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "data"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_0

    .line 1115
    .restart local v8    # "adn_index":Ljava/lang/String;
    .restart local v10    # "anrNumberCount":I
    .restart local v11    # "anr_number1":Ljava/lang/String;
    .restart local v12    # "anr_number2":Ljava/lang/String;
    .restart local v13    # "anr_number3":Ljava/lang/String;
    .restart local v14    # "anr_number4":Ljava/lang/String;
    .restart local v21    # "email":Ljava/lang/String;
    .restart local v23    # "emailAddressArray":[Ljava/lang/String;
    .restart local v25    # "email_adn_index":Ljava/lang/String;
    .restart local v29    # "name":Ljava/lang/String;
    .restart local v30    # "number":Ljava/lang/String;
    :cond_5
    const/16 v23, 0x0

    goto :goto_1

    .line 1121
    :cond_6
    if-eqz v19, :cond_f

    .line 1122
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1123
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_f

    .line 1124
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1126
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1145
    :cond_7
    :goto_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    .line 1123
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 1127
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1129
    if-nez v10, :cond_a

    .line 1130
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1140
    :cond_9
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1131
    :cond_a
    const/4 v2, 0x1

    if-ne v10, v2, :cond_b

    if-lez v9, :cond_b

    .line 1132
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 1133
    :cond_b
    const/4 v2, 0x2

    if-ne v10, v2, :cond_c

    const/4 v2, 0x3

    if-le v9, v2, :cond_c

    .line 1134
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    .line 1135
    :cond_c
    const/4 v2, 0x3

    if-ne v10, v2, :cond_d

    const/4 v2, 0x3

    if-le v9, v2, :cond_d

    .line 1136
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 1137
    :cond_d
    const/4 v2, 0x4

    if-ne v10, v2, :cond_9

    const/4 v2, 0x3

    if-le v9, v2, :cond_9

    .line 1138
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 1141
    :cond_e
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1143
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_3

    .line 1149
    .end local v26    # "i":I
    :cond_f
    if-eqz v19, :cond_10

    .line 1150
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1152
    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v24, :cond_11

    .line 1153
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1154
    :cond_11
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1155
    const/4 v2, 0x0

    .line 1281
    :cond_12
    :goto_5
    return v2

    .line 1158
    :cond_13
    const/16 v32, 0x0

    .line 1160
    .local v32, "results":[Landroid/content/ContentProviderResult;
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.contacts"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v18

    .line 1162
    .local v18, "client":Landroid/content/ContentProviderClient;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    .local v16, "batch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 1166
    .local v31, "rawContactIdIndex":I
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1168
    .local v17, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz p3, :cond_18

    if-eqz p4, :cond_18

    .line 1169
    const-string v2, "account_name"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1170
    const-string v2, "account_type"

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1174
    :goto_6
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    if-eqz v29, :cond_14

    .line 1177
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1178
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1179
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1180
    const-string v2, "data2"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1181
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    :cond_14
    if-eqz v30, :cond_15

    .line 1184
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1185
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1186
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1187
    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1188
    const-string v2, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1189
    const-string v2, "is_primary"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1190
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    :cond_15
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KDDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v2

    if-nez v2, :cond_19

    if-eqz v23, :cond_19

    .line 1196
    move-object/from16 v15, v23

    .local v15, "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v28, v0

    .local v28, "len$":I
    const/16 v27, 0x0

    .local v27, "i$":I
    :goto_7
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1a

    aget-object v22, v15, v27

    .line 1197
    .local v22, "emailAddress":Ljava/lang/String;
    if-eqz v22, :cond_17

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_17

    .line 1198
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1199
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1200
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1201
    const-string v2, "data2"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1202
    const-string v2, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1203
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    :cond_17
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .line 1172
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v22    # "emailAddress":Ljava/lang/String;
    .end local v27    # "i$":I
    .end local v28    # "len$":I
    :cond_18
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->sEmptyContentValues:Landroid/content/ContentValues;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_6

    .line 1207
    :cond_19
    if-eqz v21, :cond_1a

    .line 1208
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1209
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1210
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1211
    const-string v2, "data2"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1212
    const-string v2, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1213
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    :cond_1a
    if-eqz v11, :cond_1b

    .line 1217
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1218
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1219
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1220
    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1221
    const-string v2, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1222
    const-string v2, "is_primary"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1223
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    :cond_1b
    if-eqz v12, :cond_1c

    .line 1226
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1227
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1228
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1229
    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1230
    const-string v2, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1231
    const-string v2, "is_primary"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1232
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    :cond_1c
    if-eqz v13, :cond_1d

    .line 1235
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1236
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1237
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1238
    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1239
    const-string v2, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1240
    const-string v2, "is_primary"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1241
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    :cond_1d
    if-eqz v14, :cond_1e

    .line 1244
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 1245
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1246
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1247
    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1248
    const-string v2, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1249
    const-string v2, "is_primary"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1250
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    :cond_1e
    :try_start_0
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v32

    .line 1262
    if-eqz v18, :cond_1f

    .line 1263
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderClient;->release()Z

    .line 1267
    :cond_1f
    const-wide/16 v33, -0x1

    .line 1269
    .local v33, "retId":J
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v32, v2

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v33

    .line 1273
    :goto_8
    const-wide/16 v2, 0x0

    cmp-long v2, v33, v2

    if-gez v2, :cond_21

    .line 1274
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1255
    .end local v33    # "retId":J
    :catch_0
    move-exception v20

    .line 1256
    .local v20, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1257
    const/4 v2, 0x0

    .line 1262
    if-eqz v18, :cond_12

    .line 1263
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_5

    .line 1258
    .end local v20    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v20

    .line 1259
    .local v20, "e":Landroid/content/OperationApplicationException;
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1260
    const/4 v2, 0x0

    .line 1262
    if-eqz v18, :cond_12

    .line 1263
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_5

    .line 1262
    .end local v20    # "e":Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v2

    if-eqz v18, :cond_20

    .line 1263
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderClient;->release()Z

    :cond_20
    throw v2

    .line 1270
    .restart local v33    # "retId":J
    :catch_2
    move-exception v20

    .line 1271
    .local v20, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 1277
    .end local v20    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_21
    if-eqz p5, :cond_22

    .line 1278
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->deleteItemByContactsId(J)Z

    .line 1281
    :cond_22
    const/4 v2, 0x1

    goto/16 :goto_5
.end method

.method public copyToSim(JLjava/lang/String;I)I
    .locals 39
    .param p1, "contactId"    # J
    .param p3, "destAccountType"    # Ljava/lang/String;
    .param p4, "cursorPosition"    # I

    .prologue
    .line 418
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v13

    .line 419
    .local v13, "anrConfigValue":I
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "data"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION2:[Ljava/lang/String;

    const-string v6, "account_type=\'vnd.sec.contact.phone\'"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 423
    .local v22, "dataCursor":Landroid/database/Cursor;
    new-instance v38, Landroid/content/ContentValues;

    invoke-direct/range {v38 .. v38}, Landroid/content/ContentValues;-><init>()V

    .line 425
    .local v38, "values":Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 426
    .local v9, "adnUri":Landroid/net/Uri;
    const-string v37, ""

    .line 427
    .local v37, "simType":Ljava/lang/String;
    const/16 v27, 0x0

    .line 428
    .local v27, "maxNameLength":I
    const/16 v28, 0x0

    .line 429
    .local v28, "maxNumberLength":I
    const/16 v26, 0x0

    .line 431
    .local v26, "maxEmailLength":I
    const-string v3, "vnd.sec.contact.sim"

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 432
    sget-object v37, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 433
    sget-object v9, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_URI:Landroid/net/Uri;

    .line 434
    sget v27, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    .line 435
    sget v28, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    .line 436
    sget v26, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    .line 445
    :goto_0
    const-string v29, ""

    .line 446
    .local v29, "name":Ljava/lang/String;
    const-string v30, ""

    .line 447
    .local v30, "number":Ljava/lang/String;
    const-string v14, ""

    .line 448
    .local v14, "anr_number":Ljava/lang/String;
    const-string v10, ""

    .line 449
    .local v10, "anrA_number":Ljava/lang/String;
    const-string v11, ""

    .line 450
    .local v11, "anrB_number":Ljava/lang/String;
    const-string v12, ""

    .line 451
    .local v12, "anrC_number":Ljava/lang/String;
    const-string v24, ""

    .line 453
    .local v24, "email":Ljava/lang/String;
    const/16 v31, 0x0

    .line 454
    .local v31, "phoneNumberCount":I
    const/16 v32, 0x0

    .line 455
    .local v32, "phoneNumberCountAll":I
    const/16 v33, 0x0

    .line 457
    .local v33, "phoneSaveNumberCount":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(ILjava/lang/String;)Z

    move-result v18

    .line 458
    .local v18, "bAnrFull":Z
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(ILjava/lang/String;)Z

    move-result v15

    .line 459
    .local v15, "bAnrAFull":Z
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(ILjava/lang/String;)Z

    move-result v16

    .line 460
    .local v16, "bAnrBFull":Z
    const/4 v3, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(ILjava/lang/String;)Z

    move-result v17

    .line 462
    .local v17, "bAnrCFull":Z
    const-string v3, "PhoneBookManageSim"

    const-string v4, " ------------ copyToSIM "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-nez v22, :cond_2

    .line 465
    const-string v3, "PhoneBookManageSim"

    const-string v4, "copyToSim : dataCursor is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v3, -0x3

    .line 658
    :cond_0
    :goto_1
    return v3

    .line 438
    .end local v10    # "anrA_number":Ljava/lang/String;
    .end local v11    # "anrB_number":Ljava/lang/String;
    .end local v12    # "anrC_number":Ljava/lang/String;
    .end local v14    # "anr_number":Ljava/lang/String;
    .end local v15    # "bAnrAFull":Z
    .end local v16    # "bAnrBFull":Z
    .end local v17    # "bAnrCFull":Z
    .end local v18    # "bAnrFull":Z
    .end local v24    # "email":Ljava/lang/String;
    .end local v29    # "name":Ljava/lang/String;
    .end local v30    # "number":Ljava/lang/String;
    .end local v31    # "phoneNumberCount":I
    .end local v32    # "phoneNumberCountAll":I
    .end local v33    # "phoneSaveNumberCount":I
    :cond_1
    sget-object v37, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    .line 439
    sget-object v9, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN2_URI:Landroid/net/Uri;

    .line 440
    sget v27, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    .line 441
    sget v28, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    .line 442
    sget v26, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    goto :goto_0

    .line 469
    .restart local v10    # "anrA_number":Ljava/lang/String;
    .restart local v11    # "anrB_number":Ljava/lang/String;
    .restart local v12    # "anrC_number":Ljava/lang/String;
    .restart local v14    # "anr_number":Ljava/lang/String;
    .restart local v15    # "bAnrAFull":Z
    .restart local v16    # "bAnrBFull":Z
    .restart local v17    # "bAnrCFull":Z
    .restart local v18    # "bAnrFull":Z
    .restart local v24    # "email":Ljava/lang/String;
    .restart local v29    # "name":Ljava/lang/String;
    .restart local v30    # "number":Ljava/lang/String;
    .restart local v31    # "phoneNumberCount":I
    .restart local v32    # "phoneNumberCountAll":I
    .restart local v33    # "phoneSaveNumberCount":I
    :cond_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 470
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_16

    .line 471
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 473
    const/4 v3, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 502
    :cond_3
    :goto_3
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    .line 470
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 474
    :cond_4
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 476
    move/from16 v0, v32

    move/from16 v1, p4

    if-lt v0, v1, :cond_6

    .line 477
    if-nez v31, :cond_7

    .line 478
    const/4 v3, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 493
    :cond_5
    :goto_4
    add-int/lit8 v31, v31, 0x1

    .line 495
    :cond_6
    add-int/lit8 v32, v32, 0x1

    goto :goto_3

    .line 479
    :cond_7
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_8

    if-nez v18, :cond_8

    if-lez v13, :cond_8

    .line 480
    const/4 v3, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 481
    :cond_8
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_9

    if-eqz v15, :cond_a

    :cond_9
    const/4 v3, 0x2

    move/from16 v0, v31

    if-ne v0, v3, :cond_b

    if-nez v15, :cond_b

    :cond_a
    const/4 v3, 0x3

    if-le v13, v3, :cond_b

    .line 483
    const/4 v3, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 484
    :cond_b
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_c

    if-eqz v16, :cond_e

    :cond_c
    const/4 v3, 0x2

    move/from16 v0, v31

    if-ne v0, v3, :cond_d

    if-eqz v16, :cond_e

    :cond_d
    const/4 v3, 0x3

    move/from16 v0, v31

    if-ne v0, v3, :cond_f

    if-nez v16, :cond_f

    :cond_e
    const/4 v3, 0x3

    if-le v13, v3, :cond_f

    .line 487
    const/4 v3, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 488
    :cond_f
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_10

    if-eqz v17, :cond_13

    :cond_10
    const/4 v3, 0x2

    move/from16 v0, v31

    if-ne v0, v3, :cond_11

    if-eqz v17, :cond_13

    :cond_11
    const/4 v3, 0x3

    move/from16 v0, v31

    if-ne v0, v3, :cond_12

    if-eqz v17, :cond_13

    :cond_12
    const/4 v3, 0x4

    move/from16 v0, v31

    if-ne v0, v3, :cond_5

    if-nez v17, :cond_5

    :cond_13
    const/4 v3, 0x3

    if-le v13, v3, :cond_5

    .line 492
    const/4 v3, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    .line 496
    :cond_14
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 498
    const-string v3, "1"

    const/4 v4, 0x4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 499
    :cond_15
    const/4 v3, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_3

    .line 504
    :cond_16
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 506
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 507
    const/4 v3, -0x2

    goto/16 :goto_1

    .line 509
    :cond_17
    if-eqz v29, :cond_19

    .line 510
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v27

    if-le v3, v0, :cond_18

    .line 511
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    .line 513
    :cond_18
    const-string v3, "tag"

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_19
    if-eqz v30, :cond_1b

    .line 517
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 518
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v28

    if-le v3, v0, :cond_1a

    .line 519
    const/4 v3, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 521
    :cond_1a
    add-int/lit8 v33, v33, 0x1

    .line 522
    const-string v3, "number"

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_1b
    if-lez v13, :cond_23

    const-string v3, "2"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 526
    const-string v3, "vnd.sec.contact.sim"

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 527
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 528
    if-eqz v14, :cond_1d

    .line 529
    invoke-static {v14}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 530
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v28

    if-le v3, v0, :cond_1c

    .line 531
    const/4 v3, 0x0

    move/from16 v0, v28

    invoke-virtual {v14, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 533
    :cond_1c
    add-int/lit8 v33, v33, 0x1

    .line 534
    const-string v3, "AnrNumber"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_1d
    const/4 v3, 0x3

    if-le v13, v3, :cond_23

    .line 538
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 539
    if-eqz v10, :cond_1f

    .line 540
    invoke-static {v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 541
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v28

    if-le v3, v0, :cond_1e

    .line 542
    const/4 v3, 0x0

    move/from16 v0, v28

    invoke-virtual {v10, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 544
    :cond_1e
    add-int/lit8 v33, v33, 0x1

    .line 545
    const-string v3, "AnrANumber"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_1f
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 549
    if-eqz v11, :cond_21

    .line 550
    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 551
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v28

    if-le v3, v0, :cond_20

    .line 552
    const/4 v3, 0x0

    move/from16 v0, v28

    invoke-virtual {v11, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 554
    :cond_20
    add-int/lit8 v33, v33, 0x1

    .line 555
    const-string v3, "AnrBNumber"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_21
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 559
    if-eqz v12, :cond_23

    .line 560
    invoke-static {v12}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 561
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v28

    if-le v3, v0, :cond_22

    .line 562
    const/4 v3, 0x0

    move/from16 v0, v28

    invoke-virtual {v12, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 564
    :cond_22
    add-int/lit8 v33, v33, 0x1

    .line 565
    const-string v3, "AnrCNumber"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_23
    const-string v3, "2"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v3

    if-nez v3, :cond_25

    .line 617
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v26

    if-le v3, v0, :cond_24

    .line 618
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 620
    :cond_24
    const-string v3, "emails"

    move-object/from16 v0, v38

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_25
    const/16 v34, 0x0

    .line 626
    .local v34, "results":[Landroid/content/ContentProviderResult;
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.contacts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v21

    .line 628
    .local v21, "client":Landroid/content/ContentProviderClient;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v19, "batch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    .line 636
    .local v20, "builder":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 637
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    :try_start_0
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v34

    .line 647
    if-eqz v21, :cond_26

    .line 648
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderClient;->release()Z

    .line 652
    :cond_26
    const/4 v3, 0x0

    aget-object v3, v34, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v35

    .line 653
    .local v35, "retId":J
    const-wide/16 v3, 0x0

    cmp-long v3, v35, v3

    if-gez v3, :cond_28

    .line 654
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 640
    .end local v35    # "retId":J
    :catch_0
    move-exception v23

    .line 642
    .local v23, "e":Landroid/os/RemoteException;
    const/4 v3, -0x1

    .line 647
    if-eqz v21, :cond_0

    .line 648
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_1

    .line 643
    .end local v23    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v23

    .line 644
    .local v23, "e":Landroid/content/OperationApplicationException;
    :try_start_1
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    const/4 v3, -0x1

    .line 647
    if-eqz v21, :cond_0

    .line 648
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_1

    .line 647
    .end local v23    # "e":Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v3

    if-eqz v21, :cond_27

    .line 648
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderClient;->release()Z

    :cond_27
    throw v3

    .restart local v35    # "retId":J
    :cond_28
    move/from16 v3, v33

    .line 658
    goto/16 :goto_1
.end method

.method public copyToSim(JLjava/lang/String;Ljava/lang/String;Z)I
    .locals 31
    .param p1, "contactId"    # J
    .param p3, "srcAccountType"    # Ljava/lang/String;
    .param p4, "desAccountType"    # Ljava/lang/String;
    .param p5, "isActionMove"    # Z

    .prologue
    .line 664
    const/4 v9, 0x0

    .line 665
    .local v9, "adnUri":Landroid/net/Uri;
    const-string v29, ""

    .line 666
    .local v29, "simType":Ljava/lang/String;
    const/16 v22, 0x0

    .line 667
    .local v22, "maxNameLength":I
    const/16 v23, 0x0

    .line 668
    .local v23, "maxNumberLength":I
    const/16 v21, 0x0

    .line 670
    .local v21, "maxEmailLength":I
    const-string v3, "vnd.sec.contact.sim"

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 671
    sget-object v29, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 672
    sget-object v9, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_URI:Landroid/net/Uri;

    .line 673
    sget v22, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    .line 674
    sget v23, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    .line 675
    sget v21, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    .line 684
    :goto_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v10

    .line 685
    .local v10, "anrConfigValue":I
    const/4 v15, 0x0

    .line 686
    .local v15, "dataCursor":Landroid/database/Cursor;
    if-eqz p3, :cond_2

    .line 687
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "data"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account_type=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 697
    :goto_1
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 699
    .local v30, "values":Landroid/content/ContentValues;
    const-string v24, ""

    .line 700
    .local v24, "name":Ljava/lang/String;
    const-string v25, ""

    .line 701
    .local v25, "number":Ljava/lang/String;
    const-string v17, ""

    .line 702
    .local v17, "email":Ljava/lang/String;
    const-string v11, ""

    .line 703
    .local v11, "anr_number":Ljava/lang/String;
    const/16 v19, 0x1

    .line 704
    .local v19, "isFirst":Z
    const/16 v20, 0x1

    .line 706
    .local v20, "isSecond":Z
    if-nez v15, :cond_3

    .line 707
    const-string v3, "PhoneBookManageSim"

    const-string v4, "copyToSim : dataCursor is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v3, -0x3

    .line 813
    :cond_0
    :goto_2
    return v3

    .line 677
    .end local v10    # "anrConfigValue":I
    .end local v11    # "anr_number":Ljava/lang/String;
    .end local v15    # "dataCursor":Landroid/database/Cursor;
    .end local v17    # "email":Ljava/lang/String;
    .end local v19    # "isFirst":Z
    .end local v20    # "isSecond":Z
    .end local v24    # "name":Ljava/lang/String;
    .end local v25    # "number":Ljava/lang/String;
    .end local v30    # "values":Landroid/content/ContentValues;
    :cond_1
    sget-object v29, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    .line 678
    sget-object v9, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN2_URI:Landroid/net/Uri;

    .line 679
    sget v22, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    .line 680
    sget v23, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    .line 681
    sget v21, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    goto :goto_0

    .line 692
    .restart local v10    # "anrConfigValue":I
    .restart local v15    # "dataCursor":Landroid/database/Cursor;
    :cond_2
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "data"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_1

    .line 711
    .restart local v11    # "anr_number":Ljava/lang/String;
    .restart local v17    # "email":Ljava/lang/String;
    .restart local v19    # "isFirst":Z
    .restart local v20    # "isSecond":Z
    .restart local v24    # "name":Ljava/lang/String;
    .restart local v25    # "number":Ljava/lang/String;
    .restart local v30    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 712
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_9

    .line 713
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 715
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 733
    :cond_4
    :goto_4
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 712
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 716
    :cond_5
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 718
    if-eqz v19, :cond_6

    .line 719
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 720
    const/16 v19, 0x0

    goto :goto_4

    .line 721
    :cond_6
    if-eqz v20, :cond_7

    if-lez v10, :cond_7

    .line 722
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 723
    const/16 v20, 0x0

    goto :goto_4

    .line 725
    :cond_7
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 726
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto :goto_4

    .line 729
    :cond_8
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 731
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_4

    .line 735
    :cond_9
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 737
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 738
    const/4 v3, -0x2

    goto/16 :goto_2

    .line 740
    :cond_a
    if-eqz v24, :cond_c

    .line 741
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v22

    if-le v3, v0, :cond_b

    .line 742
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 744
    :cond_b
    const-string v3, "tag"

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_c
    if-eqz v25, :cond_e

    .line 749
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 750
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v23

    if-le v3, v0, :cond_d

    .line 751
    const/4 v3, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 754
    :cond_d
    const-string v3, "number"

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_e
    if-lez v10, :cond_10

    const-string v3, "2"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 759
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 760
    if-eqz v11, :cond_10

    .line 762
    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 763
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v23

    if-le v3, v0, :cond_f

    .line 764
    const/4 v3, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 767
    :cond_f
    const-string v3, "AnrNumber"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_10
    const-string v3, "2"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 773
    const-string v3, "vnd.sec.contact.sim"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 774
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v21

    if-le v3, v0, :cond_11

    .line 775
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 777
    :cond_11
    const-string v3, "emails"

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_12
    const/16 v26, 0x0

    .line 783
    .local v26, "results":[Landroid/content/ContentProviderResult;
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.contacts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v14

    .line 785
    .local v14, "client":Landroid/content/ContentProviderClient;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .local v12, "batch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 787
    .local v13, "builder":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 788
    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    :try_start_0
    invoke-virtual {v14, v12}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v26

    .line 798
    if-eqz v14, :cond_13

    .line 799
    invoke-virtual {v14}, Landroid/content/ContentProviderClient;->release()Z

    .line 803
    :cond_13
    const/4 v3, 0x0

    aget-object v3, v26, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v27

    .line 804
    .local v27, "retId":J
    const-wide/16 v3, 0x0

    cmp-long v3, v27, v3

    if-gez v3, :cond_15

    .line 805
    const/4 v3, -0x1

    goto/16 :goto_2

    .line 791
    .end local v27    # "retId":J
    :catch_0
    move-exception v16

    .line 793
    .local v16, "e":Landroid/os/RemoteException;
    const/4 v3, -0x1

    .line 798
    if-eqz v14, :cond_0

    .line 799
    invoke-virtual {v14}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_2

    .line 794
    .end local v16    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v16

    .line 795
    .local v16, "e":Landroid/content/OperationApplicationException;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    const/4 v3, -0x1

    .line 798
    if-eqz v14, :cond_0

    .line 799
    invoke-virtual {v14}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_2

    .line 798
    .end local v16    # "e":Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v3

    if-eqz v14, :cond_14

    .line 799
    invoke-virtual {v14}, Landroid/content/ContentProviderClient;->release()Z

    :cond_14
    throw v3

    .line 809
    .restart local v27    # "retId":J
    :cond_15
    if-eqz p5, :cond_16

    .line 810
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->deleteItemByContactsId(J)Z

    .line 813
    :cond_16
    const/4 v3, 0x1

    goto/16 :goto_2
.end method

.method public copyToSim(JZ)I
    .locals 31
    .param p1, "contactId"    # J
    .param p3, "isActionMove"    # Z

    .prologue
    .line 253
    const-wide/16 v10, -0x1

    .line 254
    .local v10, "RAW_ID_FOR_NAME":J
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v12

    .line 255
    .local v12, "anrConfigValue":I
    sget-object v29, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 256
    .local v29, "uri":Landroid/net/Uri;
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v29

    .line 258
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v29

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "data"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 261
    .local v17, "dataCursor":Landroid/database/Cursor;
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION_CONTACTS:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id =\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, v29

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 264
    .local v9, "NamedataCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 266
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 267
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 271
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_0
    :goto_0
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 277
    .local v30, "values":Landroid/content/ContentValues;
    const-string v24, ""

    .line 278
    .local v24, "name":Ljava/lang/String;
    const-string v25, ""

    .line 279
    .local v25, "number":Ljava/lang/String;
    const-string v19, ""

    .line 280
    .local v19, "email":Ljava/lang/String;
    const-string v13, ""

    .line 281
    .local v13, "anr_number":Ljava/lang/String;
    const/16 v21, 0x1

    .line 282
    .local v21, "isFirst":Z
    const/16 v22, 0x1

    .line 283
    .local v22, "isFirstName":Z
    const/16 v23, 0x1

    .line 285
    .local v23, "isSecond":Z
    if-nez v17, :cond_2

    .line 286
    const-string v3, "PhoneBookManageSim"

    const-string v4, "copyToSim : dataCursor is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v3, -0x3

    .line 413
    :cond_1
    :goto_1
    return v3

    .line 268
    .end local v13    # "anr_number":Ljava/lang/String;
    .end local v19    # "email":Ljava/lang/String;
    .end local v21    # "isFirst":Z
    .end local v22    # "isFirstName":Z
    .end local v23    # "isSecond":Z
    .end local v24    # "name":Ljava/lang/String;
    .end local v25    # "number":Ljava/lang/String;
    .end local v30    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v18

    .line 269
    .local v18, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    .line 290
    .restart local v13    # "anr_number":Ljava/lang/String;
    .restart local v19    # "email":Ljava/lang/String;
    .restart local v21    # "isFirst":Z
    .restart local v22    # "isFirstName":Z
    .restart local v23    # "isSecond":Z
    .restart local v24    # "name":Ljava/lang/String;
    .restart local v25    # "number":Ljava/lang/String;
    .restart local v30    # "values":Landroid/content/ContentValues;
    :cond_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 291
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_9

    .line 292
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 294
    if-eqz v22, :cond_4

    .line 296
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 298
    const/16 v22, 0x0

    .line 321
    :cond_3
    :goto_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 291
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 299
    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-lez v3, :cond_3

    .line 300
    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, v10

    if-nez v3, :cond_3

    .line 301
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto :goto_3

    .line 304
    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 306
    if-eqz v21, :cond_6

    .line 307
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 308
    const/16 v21, 0x0

    goto :goto_3

    .line 309
    :cond_6
    if-eqz v23, :cond_7

    if-lez v12, :cond_7

    .line 310
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 311
    const/16 v23, 0x0

    goto :goto_3

    .line 313
    :cond_7
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 314
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto :goto_3

    .line 317
    :cond_8
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 319
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_3

    .line 323
    :cond_9
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 325
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 326
    const/4 v3, -0x2

    goto/16 :goto_1

    .line 328
    :cond_a
    if-eqz v24, :cond_c

    .line 329
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    if-le v3, v4, :cond_b

    .line 330
    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 332
    :cond_b
    const-string v3, "tag"

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_c
    if-eqz v25, :cond_e

    .line 337
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 338
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    if-le v3, v4, :cond_d

    .line 339
    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 342
    :cond_d
    const-string v3, "number"

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_e
    if-lez v12, :cond_10

    const-string v3, "2"

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 346
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 347
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-lez v3, :cond_10

    .line 348
    if-eqz v13, :cond_10

    .line 350
    invoke-static {v13}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 351
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    if-le v3, v4, :cond_f

    .line 352
    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 355
    :cond_f
    const-string v3, "AnrNumber"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_10
    const-string v3, "2"

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v3

    if-nez v3, :cond_12

    .line 363
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    if-le v3, v4, :cond_11

    .line 364
    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 366
    :cond_11
    const-string v3, "emails"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_12
    const/16 v26, 0x0

    .line 372
    .local v26, "results":[Landroid/content/ContentProviderResult;
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.contacts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v16

    .line 374
    .local v16, "client":Landroid/content/ContentProviderClient;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v14, "batch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 383
    .local v15, "builder":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 384
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v26

    .line 394
    if-eqz v16, :cond_13

    .line 395
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderClient;->release()Z

    .line 399
    :cond_13
    if-eqz v26, :cond_15

    move-object/from16 v0, v26

    array-length v3, v0

    if-lez v3, :cond_15

    .line 400
    const/4 v3, 0x0

    aget-object v3, v26, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v27

    .line 401
    .local v27, "retId":J
    const-wide/16 v3, 0x0

    cmp-long v3, v27, v3

    if-gez v3, :cond_16

    .line 402
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 387
    .end local v27    # "retId":J
    :catch_1
    move-exception v18

    .line 389
    .local v18, "e":Landroid/os/RemoteException;
    const/4 v3, -0x1

    .line 394
    if-eqz v16, :cond_1

    .line 395
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_1

    .line 390
    .end local v18    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v18

    .line 391
    .local v18, "e":Landroid/content/OperationApplicationException;
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 392
    const/4 v3, -0x1

    .line 394
    if-eqz v16, :cond_1

    .line 395
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_1

    .line 394
    .end local v18    # "e":Landroid/content/OperationApplicationException;
    :catchall_1
    move-exception v3

    if-eqz v16, :cond_14

    .line 395
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderClient;->release()Z

    :cond_14
    throw v3

    .line 405
    :cond_15
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 409
    .restart local v27    # "retId":J
    :cond_16
    if-eqz p3, :cond_17

    .line 410
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->deleteItemByContactsId(J)Z

    .line 413
    :cond_17
    const/4 v3, 0x1

    goto/16 :goto_1
.end method

.method public copyToSim2(JI)I
    .locals 33
    .param p1, "contactId"    # J
    .param p3, "cursorPosition"    # I

    .prologue
    .line 2659
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v11

    .line 2660
    .local v11, "anrConfigValue":I
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "data"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v5, "account_type=\'vnd.sec.contact.phone\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 2664
    .local v16, "dataCursor":Landroid/database/Cursor;
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 2666
    .local v32, "values":Landroid/content/ContentValues;
    const-string v24, ""

    .line 2667
    .local v24, "name":Ljava/lang/String;
    const-string v25, ""

    .line 2668
    .local v25, "number":Ljava/lang/String;
    const-string v12, ""

    .line 2669
    .local v12, "anr_number":Ljava/lang/String;
    const-string v8, ""

    .line 2670
    .local v8, "anrA_number":Ljava/lang/String;
    const-string v9, ""

    .line 2671
    .local v9, "anrB_number":Ljava/lang/String;
    const-string v10, ""

    .line 2672
    .local v10, "anrC_number":Ljava/lang/String;
    const-string v18, ""

    .line 2674
    .local v18, "email":Ljava/lang/String;
    const/16 v26, 0x0

    .line 2675
    .local v26, "phoneNumberCount":I
    const/16 v27, 0x0

    .line 2676
    .local v27, "phoneNumberCountAll":I
    const/16 v28, 0x0

    .line 2678
    .local v28, "phoneSaveNumberCount":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(II)Z

    move-result v23

    .line 2679
    .local v23, "isAnrFull":Z
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(II)Z

    move-result v20

    .line 2680
    .local v20, "isAnrAFull":Z
    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(II)Z

    move-result v21

    .line 2681
    .local v21, "isAnrBFull":Z
    const/4 v2, 0x3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(II)Z

    move-result v22

    .line 2683
    .local v22, "isAnrCFull":Z
    const-string v2, "PhoneBookManageSim2"

    const-string v3, " ------------ copyToSIM "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    if-nez v16, :cond_1

    .line 2686
    const-string v2, "PhoneBookManageSim2"

    const-string v3, "copyToSim2 : dataCursor is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    const/4 v2, -0x3

    .line 2826
    :cond_0
    :goto_0
    return v2

    .line 2690
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2691
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_14

    .line 2692
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2694
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 2721
    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 2691
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 2695
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2697
    move/from16 v0, v27

    move/from16 v1, p3

    if-lt v0, v1, :cond_5

    .line 2698
    if-nez v26, :cond_6

    .line 2699
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 2714
    :cond_4
    :goto_3
    add-int/lit8 v26, v26, 0x1

    .line 2716
    :cond_5
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 2700
    :cond_6
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_7

    if-nez v23, :cond_7

    if-lez v11, :cond_7

    .line 2701
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 2702
    :cond_7
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_8

    if-eqz v20, :cond_9

    :cond_8
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_a

    if-nez v20, :cond_a

    :cond_9
    const/4 v2, 0x3

    if-le v11, v2, :cond_a

    .line 2704
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 2705
    :cond_a
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_b

    if-eqz v21, :cond_d

    :cond_b
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_c

    if-eqz v21, :cond_d

    :cond_c
    const/4 v2, 0x3

    move/from16 v0, v26

    if-ne v0, v2, :cond_e

    if-nez v21, :cond_e

    :cond_d
    const/4 v2, 0x3

    if-le v11, v2, :cond_e

    .line 2708
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 2709
    :cond_e
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_f

    if-eqz v22, :cond_12

    :cond_f
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_10

    if-eqz v22, :cond_12

    :cond_10
    const/4 v2, 0x3

    move/from16 v0, v26

    if-ne v0, v2, :cond_11

    if-eqz v22, :cond_12

    :cond_11
    const/4 v2, 0x4

    move/from16 v0, v26

    if-ne v0, v2, :cond_4

    if-nez v22, :cond_4

    :cond_12
    const/4 v2, 0x3

    if-le v11, v2, :cond_4

    .line 2713
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 2717
    :cond_13
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2719
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 2723
    :cond_14
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2725
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2726
    const/4 v2, -0x2

    goto/16 :goto_0

    .line 2728
    :cond_15
    if-eqz v24, :cond_17

    .line 2729
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    if-le v2, v3, :cond_16

    .line 2730
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 2732
    :cond_16
    const-string v2, "tag"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2735
    :cond_17
    if-eqz v25, :cond_19

    .line 2736
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2737
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    if-le v2, v3, :cond_18

    .line 2738
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 2740
    :cond_18
    add-int/lit8 v28, v28, 0x1

    .line 2741
    const-string v2, "number"

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    :cond_19
    if-lez v11, :cond_21

    const-string v2, "2"

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2745
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 2746
    if-eqz v12, :cond_1b

    .line 2747
    invoke-static {v12}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2748
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    if-le v2, v3, :cond_1a

    .line 2749
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 2751
    :cond_1a
    add-int/lit8 v28, v28, 0x1

    .line 2752
    const-string v2, "AnrNumber"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    :cond_1b
    const/4 v2, 0x3

    if-le v11, v2, :cond_21

    .line 2756
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 2757
    if-eqz v8, :cond_1d

    .line 2758
    invoke-static {v8}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2759
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    if-le v2, v3, :cond_1c

    .line 2760
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2762
    :cond_1c
    add-int/lit8 v28, v28, 0x1

    .line 2763
    const-string v2, "AnrANumber"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    :cond_1d
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2767
    if-eqz v9, :cond_1f

    .line 2768
    invoke-static {v9}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2769
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    if-le v2, v3, :cond_1e

    .line 2770
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 2772
    :cond_1e
    add-int/lit8 v28, v28, 0x1

    .line 2773
    const-string v2, "AnrBNumber"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    :cond_1f
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 2777
    if-eqz v10, :cond_21

    .line 2778
    invoke-static {v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2779
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    if-le v2, v3, :cond_20

    .line 2780
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 2782
    :cond_20
    add-int/lit8 v28, v28, 0x1

    .line 2783
    const-string v2, "AnrCNumber"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2789
    :cond_21
    const-string v2, "2"

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2790
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(I)Z

    move-result v2

    if-nez v2, :cond_23

    .line 2791
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    if-le v2, v3, :cond_22

    .line 2792
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 2794
    :cond_22
    const-string v2, "emails"

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    :cond_23
    const/16 v29, 0x0

    .line 2800
    .local v29, "results":[Landroid/content/ContentProviderResult;
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.contacts"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v15

    .line 2802
    .local v15, "client":Landroid/content/ContentProviderClient;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2803
    .local v13, "batch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN2_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 2804
    .local v14, "builder":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 2805
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2807
    :try_start_0
    invoke-virtual {v15, v13}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v29

    .line 2815
    if-eqz v15, :cond_24

    .line 2816
    invoke-virtual {v15}, Landroid/content/ContentProviderClient;->release()Z

    .line 2820
    :cond_24
    const/4 v2, 0x0

    aget-object v2, v29, v2

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v30

    .line 2821
    .local v30, "retId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v30, v2

    if-gez v2, :cond_26

    .line 2822
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 2808
    .end local v30    # "retId":J
    :catch_0
    move-exception v17

    .line 2810
    .local v17, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    .line 2815
    if-eqz v15, :cond_0

    .line 2816
    invoke-virtual {v15}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 2811
    .end local v17    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v17

    .line 2812
    .local v17, "e":Landroid/content/OperationApplicationException;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2813
    const/4 v2, -0x1

    .line 2815
    if-eqz v15, :cond_0

    .line 2816
    invoke-virtual {v15}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 2815
    .end local v17    # "e":Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_25

    .line 2816
    invoke-virtual {v15}, Landroid/content/ContentProviderClient;->release()Z

    :cond_25
    throw v2

    .restart local v30    # "retId":J
    :cond_26
    move/from16 v2, v28

    .line 2826
    goto/16 :goto_0
.end method

.method public copyToSim2(JZ)I
    .locals 22
    .param p1, "contactId"    # J
    .param p3, "isActionMove"    # Z

    .prologue
    .line 2555
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "data"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2559
    .local v11, "dataCursor":Landroid/database/Cursor;
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 2561
    .local v21, "values":Landroid/content/ContentValues;
    const-string v16, ""

    .line 2562
    .local v16, "name":Ljava/lang/String;
    const-string v17, ""

    .line 2563
    .local v17, "number":Ljava/lang/String;
    const-string v13, ""

    .line 2564
    .local v13, "email":Ljava/lang/String;
    const/4 v15, 0x1

    .line 2566
    .local v15, "isFirst":Z
    if-nez v11, :cond_1

    .line 2567
    const-string v2, "PhoneBookManageSim2"

    const-string v3, "copyToSim2 : dataCursor is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    const/4 v2, -0x3

    .line 2655
    :cond_0
    :goto_0
    return v2

    .line 2571
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2572
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v14, v2, :cond_6

    .line 2573
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2575
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2590
    :cond_2
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 2572
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2576
    :cond_3
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2578
    if-eqz v15, :cond_4

    .line 2579
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2580
    const/4 v15, 0x0

    goto :goto_2

    .line 2582
    :cond_4
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2583
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_2

    .line 2586
    :cond_5
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2588
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 2592
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2594
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2595
    const/4 v2, -0x2

    goto :goto_0

    .line 2597
    :cond_7
    if-eqz v16, :cond_9

    .line 2598
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    if-le v2, v3, :cond_8

    .line 2599
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 2601
    :cond_8
    const-string v2, "tag"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    :cond_9
    if-eqz v17, :cond_b

    .line 2606
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2607
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    if-le v2, v3, :cond_a

    .line 2608
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 2611
    :cond_a
    const-string v2, "number"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
    :cond_b
    const-string v2, "2"

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2615
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2616
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    if-le v2, v3, :cond_c

    .line 2617
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 2619
    :cond_c
    const-string v2, "emails"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    :cond_d
    const/16 v18, 0x0

    .line 2625
    .local v18, "results":[Landroid/content/ContentProviderResult;
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.contacts"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v10

    .line 2627
    .local v10, "client":Landroid/content/ContentProviderClient;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2628
    .local v8, "batch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN2_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 2629
    .local v9, "builder":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 2630
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2632
    :try_start_0
    invoke-virtual {v10, v8}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .line 2640
    if-eqz v10, :cond_e

    .line 2641
    invoke-virtual {v10}, Landroid/content/ContentProviderClient;->release()Z

    .line 2645
    :cond_e
    const/4 v2, 0x0

    aget-object v2, v18, v2

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v19

    .line 2646
    .local v19, "retId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v19, v2

    if-gez v2, :cond_10

    .line 2647
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 2633
    .end local v19    # "retId":J
    :catch_0
    move-exception v12

    .line 2635
    .local v12, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    .line 2640
    if-eqz v10, :cond_0

    .line 2641
    invoke-virtual {v10}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 2636
    .end local v12    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v12

    .line 2637
    .local v12, "e":Landroid/content/OperationApplicationException;
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2638
    const/4 v2, -0x1

    .line 2640
    if-eqz v10, :cond_0

    .line 2641
    invoke-virtual {v10}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 2640
    .end local v12    # "e":Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_f

    .line 2641
    invoke-virtual {v10}, Landroid/content/ContentProviderClient;->release()Z

    :cond_f
    throw v2

    .line 2651
    .restart local v19    # "retId":J
    :cond_10
    if-eqz p3, :cond_11

    .line 2652
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->deleteItemByContactsId(J)Z

    .line 2655
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public getAnrFieldCount()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2856
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 2857
    .local v0, "anrConfigValue":I
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 2858
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 2861
    :cond_0
    const-string v3, "2"

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2877
    :goto_0
    return v2

    .line 2865
    :cond_1
    sget-boolean v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v3, :cond_2

    .line 2866
    sput-boolean v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 2867
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 2870
    :cond_2
    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    .line 2871
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 2872
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2873
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    .line 2871
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2876
    :cond_4
    const-string v2, "PhoneBookManageSim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAnrFieldCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    goto :goto_0
.end method

.method public getAnrFieldCount(I)I
    .locals 6
    .param p1, "simId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2881
    if-nez p1, :cond_1

    .line 2882
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getAnrFieldCount()I

    move-result v2

    .line 2910
    :cond_0
    :goto_0
    return v2

    .line 2885
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isInvalidDynamicMultiSim(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2889
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 2890
    .local v0, "anrConfigValue":I
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 2891
    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    .line 2894
    :cond_2
    const-string v3, "2"

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2898
    sget-boolean v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v3, :cond_3

    .line 2899
    sput-boolean v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 2900
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;I)V

    .line 2903
    :cond_3
    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    .line 2904
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 2905
    invoke-virtual {p0, v1, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2906
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    .line 2904
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2909
    :cond_5
    const-string v2, "PhoneBookManageSim2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAnrFieldCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrFieldCount:I

    goto :goto_0
.end method

.method public getByteArrayText(Ljava/lang/String;)[B
    .locals 13
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 918
    new-array v1, v11, [B

    .line 919
    .local v1, "byteArrayText":[B
    new-array v2, v11, [B

    .line 920
    .local v2, "byteArrayTextTemp":[B
    const/4 v8, 0x0

    .line 921
    .local v8, "isEncodable":Z
    const/4 v7, 0x0

    .line 922
    .local v7, "isChineseOrKorean":Z
    const/4 v0, 0x0

    .line 925
    .local v0, "additionalByte":I
    const/4 v11, 0x1

    :try_start_0
    invoke-static {p1, v11}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    const/4 v8, 0x1

    .line 932
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v6, v11, :cond_1

    .line 933
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-direct {p0, v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->chkKorean(C)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-direct {p0, v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->chkChinese(C)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 934
    :cond_0
    const/4 v7, 0x1

    .line 969
    :cond_1
    if-eqz v8, :cond_3

    .line 970
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v1

    .line 1030
    :goto_2
    return-object v1

    .line 927
    .end local v6    # "i":I
    :catch_0
    move-exception v5

    .line 928
    .local v5, "ex":Lcom/android/internal/telephony/EncodeException;
    const/4 v8, 0x0

    goto :goto_0

    .line 932
    .end local v5    # "ex":Lcom/android/internal/telephony/EncodeException;
    .restart local v6    # "i":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 972
    :cond_3
    const/4 v6, 0x0

    .line 973
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 974
    .local v3, "charCount":I
    const v10, 0xffff

    .local v10, "min":C
    const/4 v9, 0x0

    .line 976
    .local v9, "max":C
    :goto_3
    if-ge v6, v3, :cond_8

    .line 977
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isGSMCharacters(C)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 978
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isTwoByteGsmDefaultCharacters(C)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 979
    add-int/lit8 v0, v0, 0x1

    .line 981
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 982
    goto :goto_3

    .line 984
    :cond_5
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ge v11, v10, :cond_6

    .line 985
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 987
    :cond_6
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-le v11, v9, :cond_7

    .line 988
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 990
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 994
    :cond_8
    :try_start_1
    const-string v11, "ISO-10646-UCS-2"

    invoke-virtual {p1, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 996
    if-eqz v7, :cond_a

    .line 997
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Contact_EnableKsc5601Encoding"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 999
    const-string v11, "KSC5601"

    invoke-virtual {p1, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1001
    :cond_9
    array-length v11, v2

    new-array v1, v11, [B

    goto :goto_2

    .line 1002
    :cond_a
    const v11, 0x8000

    if-ge v9, v11, :cond_b

    shr-int/lit8 v11, v10, 0x7

    shr-int/lit8 v12, v9, 0x7

    if-ne v11, v12, :cond_b

    .line 1004
    array-length v11, v2

    div-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v0

    new-array v1, v11, [B

    goto :goto_2

    .line 1005
    :cond_b
    sub-int v11, v9, v10

    const/16 v12, 0x7f

    if-gt v11, v12, :cond_c

    .line 1007
    array-length v11, v2

    div-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v0

    new-array v1, v11, [B

    goto/16 :goto_2

    .line 1010
    :cond_c
    array-length v11, v2

    add-int/lit8 v11, v11, -0x1

    new-array v1, v11, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 1012
    :catch_1
    move-exception v4

    .line 1014
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public getDBNumberCount(J)I
    .locals 9
    .param p1, "contactId"    # J

    .prologue
    const/4 v4, 0x0

    .line 817
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "data"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_type=\'vnd.sec.contact.phone\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 820
    .local v6, "dataCursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 821
    .local v7, "dbCount":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 822
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 823
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    add-int/lit8 v7, v7, 0x1

    .line 826
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 822
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 828
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 829
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ------------ getDBNumberCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return v7
.end method

.method public getEmailLength()I
    .locals 1

    .prologue
    .line 2468
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_0

    .line 2469
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 2470
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 2472
    :cond_0
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    return v0
.end method

.method public getEmailLength(I)I
    .locals 2
    .param p1, "simId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2494
    if-eqz p1, :cond_0

    .line 2499
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isInvalidDynamicMultiSim(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2507
    :goto_0
    return v0

    .line 2496
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEmailLength()I

    move-result v0

    goto :goto_0

    .line 2503
    :cond_1
    sget-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v1, :cond_2

    .line 2504
    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2505
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;I)V

    .line 2507
    :cond_2
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    goto :goto_0
.end method

.method public getEmailLength(Ljava/lang/String;)I
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 2478
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2479
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEmailLength()I

    move-result v0

    .line 2490
    :goto_0
    return v0

    .line 2482
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2483
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEmailLength(I)I

    move-result v0

    goto :goto_0

    .line 2486
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v0, :cond_2

    .line 2487
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2488
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    :cond_2
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    goto :goto_0
.end method

.method public getEnableCount()I
    .locals 2

    .prologue
    .line 2000
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 2001
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    sget v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEnableCount(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2023
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isInvalidDynamicMultiSim(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2037
    :cond_0
    :goto_0
    return v0

    .line 2026
    :cond_1
    if-nez p1, :cond_2

    .line 2027
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEnableCount()I

    move-result v0

    goto :goto_0

    .line 2029
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2030
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v0, :cond_3

    .line 2031
    const-string v0, "ril.ICC_TYPE2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    .line 2032
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;I)V

    .line 2034
    :cond_3
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnableCount(slot2) :  mMaxCount2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsedCount2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    sget v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getEnableCount(Ljava/lang/String;)I
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 2006
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2007
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2008
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEnableCount(I)I

    move-result v0

    .line 2017
    :goto_0
    return v0

    .line 2010
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    sget v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 2013
    :cond_1
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2014
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEnableCount(I)I

    move-result v0

    goto :goto_0

    .line 2016
    :cond_2
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    sget v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getMaxCount()I
    .locals 1

    .prologue
    .line 2289
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_0

    .line 2290
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 2291
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 2292
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 2294
    :cond_0
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    return v0
.end method

.method public getMaxCount(I)I
    .locals 2
    .param p1, "simId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2318
    if-eqz p1, :cond_0

    .line 2323
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isInvalidDynamicMultiSim(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2331
    :goto_0
    return v0

    .line 2320
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getMaxCount()I

    move-result v0

    goto :goto_0

    .line 2327
    :cond_1
    sget-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v1, :cond_2

    .line 2328
    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2329
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;I)V

    .line 2331
    :cond_2
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    goto :goto_0
.end method

.method public getMaxCount(Ljava/lang/String;)I
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 2300
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2301
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getMaxCount()I

    move-result v0

    .line 2314
    :goto_0
    return v0

    .line 2304
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2305
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getMaxCount(I)I

    move-result v0

    goto :goto_0

    .line 2308
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v0, :cond_2

    .line 2309
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2310
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    .line 2311
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    :cond_2
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    goto :goto_0
.end method

.method public getNameLength()I
    .locals 1

    .prologue
    .line 2379
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_0

    .line 2380
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 2381
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 2383
    :cond_0
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    return v0
.end method

.method public getNameLength(I)I
    .locals 2
    .param p1, "simId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2406
    if-eqz p1, :cond_0

    .line 2411
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isInvalidDynamicMultiSim(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2419
    :goto_0
    return v0

    .line 2408
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength()I

    move-result v0

    goto :goto_0

    .line 2415
    :cond_1
    sget-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v1, :cond_2

    .line 2416
    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2417
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;I)V

    .line 2419
    :cond_2
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    goto :goto_0
.end method

.method public getNameLength(Ljava/lang/String;)I
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 2389
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2390
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength()I

    move-result v0

    .line 2402
    :goto_0
    return v0

    .line 2393
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2394
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength(I)I

    move-result v0

    goto :goto_0

    .line 2397
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v0, :cond_2

    .line 2398
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2399
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 2402
    :cond_2
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    goto :goto_0
.end method

.method public getNumberLength()I
    .locals 1

    .prologue
    .line 2424
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_0

    .line 2425
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 2426
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 2428
    :cond_0
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    return v0
.end method

.method public getNumberLength(I)I
    .locals 2
    .param p1, "simId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2450
    if-eqz p1, :cond_0

    .line 2455
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isInvalidDynamicMultiSim(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2463
    :goto_0
    return v0

    .line 2452
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v0

    goto :goto_0

    .line 2459
    :cond_1
    sget-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v1, :cond_2

    .line 2460
    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2461
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;I)V

    .line 2463
    :cond_2
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    goto :goto_0
.end method

.method public getNumberLength(Ljava/lang/String;)I
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 2434
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2435
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v0

    .line 2446
    :goto_0
    return v0

    .line 2438
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2439
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(I)I

    move-result v0

    goto :goto_0

    .line 2442
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v0, :cond_2

    .line 2443
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2444
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    :cond_2
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    goto :goto_0
.end method

.method public getRegisterInfo(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3252
    const-string v0, ""

    .line 3253
    .local v0, "iccId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3254
    .local v2, "where":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 3256
    .local v1, "returnValue":[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3257
    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3258
    const-string v3, "gsm.sim.cardname"

    const-string v4, "Slot 1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 3259
    const-string v3, "gsm.sim.icon"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 3273
    :goto_0
    return-object v1

    .line 3261
    :cond_0
    const-string v3, "gsm.sim.cardname2"

    const-string v4, "Slot 2"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 3262
    const-string v3, "gsm.sim.icon2"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    goto :goto_0

    .line 3265
    :cond_1
    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3266
    const-string v3, "gsm.sim.cardname"

    const-string v4, "SIM 1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 3267
    const-string v3, "gsm.sim.icon"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    goto :goto_0

    .line 3269
    :cond_2
    const-string v3, "gsm.sim.cardname2"

    const-string v4, "SIM 2"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 3270
    const-string v3, "gsm.sim.icon2"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    goto :goto_0
.end method

.method public getSimCallIcon(I)I
    .locals 6
    .param p1, "simId"    # I

    .prologue
    .line 3771
    const/4 v2, 0x0

    .line 3772
    .local v2, "simIconIndex":I
    const/4 v1, 0x0

    .line 3775
    .local v1, "returnId":I
    if-nez p1, :cond_1

    .line 3776
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3777
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3792
    :goto_0
    const-string v3, "PhoneBookManageSim"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM ICON : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ret_sim_icon = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "V2"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3795
    packed-switch v2, :pswitch_data_0

    .line 3814
    const v1, 0x7f020679

    .line 3821
    :goto_1
    return v1

    .line 3780
    :cond_0
    :try_start_1
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 3783
    :cond_1
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0

    .line 3787
    :catch_0
    move-exception v0

    .line 3789
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 3796
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :pswitch_0
    const v1, 0x7f020681

    .line 3797
    goto :goto_1

    .line 3798
    :pswitch_1
    const v1, 0x7f020682

    .line 3799
    goto :goto_1

    .line 3800
    :pswitch_2
    const v1, 0x7f020683

    .line 3801
    goto :goto_1

    .line 3802
    :pswitch_3
    const v1, 0x7f020689

    .line 3803
    goto :goto_1

    .line 3804
    :pswitch_4
    const v1, 0x7f020687

    .line 3805
    goto :goto_1

    .line 3806
    :pswitch_5
    const v1, 0x7f020686

    .line 3807
    goto :goto_1

    .line 3808
    :pswitch_6
    const v1, 0x7f020685

    .line 3809
    goto :goto_1

    .line 3810
    :pswitch_7
    const v1, 0x7f020688

    .line 3811
    goto :goto_1

    .line 3812
    :pswitch_8
    const v1, 0x7f020684

    .line 3813
    goto :goto_1

    .line 3818
    :cond_2
    const v1, 0x7f020679

    goto :goto_1

    .line 3795
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getSimContactDetailIcon(I)I
    .locals 6
    .param p1, "simId"    # I

    .prologue
    .line 3713
    const/4 v2, 0x0

    .line 3714
    .local v2, "simIconIndex":I
    const/4 v1, 0x0

    .line 3716
    .local v1, "returnId":I
    if-nez p1, :cond_1

    .line 3717
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3718
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3732
    :goto_0
    const-string v3, "PhoneBookManageSim"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimContactDetailIcon  SIM ICON : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ret_sim_icon = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    packed-switch v2, :pswitch_data_0

    .line 3763
    const v1, 0x7f0203b9

    .line 3767
    :goto_1
    return v1

    .line 3721
    :cond_0
    :try_start_1
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 3724
    :cond_1
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0

    .line 3727
    :catch_0
    move-exception v0

    .line 3729
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 3736
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :pswitch_0
    const v1, 0x7f0203b9

    .line 3737
    goto :goto_1

    .line 3739
    :pswitch_1
    const v1, 0x7f0203ba

    .line 3740
    goto :goto_1

    .line 3742
    :pswitch_2
    const v1, 0x7f0203bc

    .line 3743
    goto :goto_1

    .line 3745
    :pswitch_3
    const v1, 0x7f0203c4

    .line 3746
    goto :goto_1

    .line 3748
    :pswitch_4
    const v1, 0x7f0203c2

    .line 3749
    goto :goto_1

    .line 3751
    :pswitch_5
    const v1, 0x7f0203c1

    .line 3752
    goto :goto_1

    .line 3754
    :pswitch_6
    const v1, 0x7f0203c0

    .line 3755
    goto :goto_1

    .line 3757
    :pswitch_7
    const v1, 0x7f0203c3

    .line 3758
    goto :goto_1

    .line 3760
    :pswitch_8
    const v1, 0x7f0203bf

    .line 3761
    goto :goto_1

    .line 3734
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getSimContactDetailIcon(Ljava/lang/String;)I
    .locals 6
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3648
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3649
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3650
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimContactDetailIcon(I)I

    move-result v0

    .line 3709
    :cond_0
    :goto_0
    return v0

    .line 3652
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimContactDetailIcon(I)I

    move-result v0

    goto :goto_0

    .line 3657
    :cond_2
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    aput-object v5, v1, v4

    aput-object v5, v1, v3

    .line 3659
    .local v1, "simInfo":[Ljava/lang/String;
    sget-boolean v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheckSimPopupIcon:Z

    if-eqz v2, :cond_3

    .line 3660
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->setSimInfo()[Z

    .line 3663
    :cond_3
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3664
    const v0, 0x7f0203b9

    .line 3665
    .local v0, "retSimIconId":I
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim1Info:[Ljava/lang/String;

    .line 3671
    :goto_1
    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    .line 3672
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3701
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3702
    const v0, 0x7f0203b9

    goto :goto_0

    .line 3667
    .end local v0    # "retSimIconId":I
    :cond_4
    const v0, 0x7f0203ba

    .line 3668
    .restart local v0    # "retSimIconId":I
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Info:[Ljava/lang/String;

    goto :goto_1

    .line 3674
    :pswitch_0
    const v0, 0x7f0203b9

    .line 3675
    goto :goto_0

    .line 3677
    :pswitch_1
    const v0, 0x7f0203ba

    .line 3678
    goto :goto_0

    .line 3680
    :pswitch_2
    const v0, 0x7f0203bc

    .line 3681
    goto :goto_0

    .line 3683
    :pswitch_3
    const v0, 0x7f0203c4

    .line 3684
    goto :goto_0

    .line 3686
    :pswitch_4
    const v0, 0x7f0203c2

    .line 3687
    goto :goto_0

    .line 3689
    :pswitch_5
    const v0, 0x7f0203c1

    .line 3690
    goto :goto_0

    .line 3692
    :pswitch_6
    const v0, 0x7f0203c0

    .line 3693
    goto :goto_0

    .line 3695
    :pswitch_7
    const v0, 0x7f0203c3

    .line 3696
    goto :goto_0

    .line 3698
    :pswitch_8
    const v0, 0x7f0203bf

    .line 3699
    goto :goto_0

    .line 3704
    :cond_5
    const v0, 0x7f0203ba

    goto :goto_0

    .line 3672
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getSimIcon(I)I
    .locals 8
    .param p1, "simId"    # I

    .prologue
    .line 3472
    const/4 v3, 0x0

    .line 3473
    .local v3, "sim_icon1":I
    const/4 v4, 0x0

    .line 3474
    .local v4, "sim_icon2":I
    const/4 v1, 0x0

    .line 3477
    .local v1, "retSimIconId":I
    :try_start_0
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 3478
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3483
    :goto_0
    if-nez p1, :cond_1

    move v2, v3

    .line 3484
    .local v2, "ret_sim_icon":I
    :goto_1
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3485
    move v2, v4

    .line 3487
    :cond_0
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM 1 ICON : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SIM 2 ICON : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ret_sim_icon = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    packed-switch v2, :pswitch_data_0

    .line 3517
    const v1, 0x7f020826

    .line 3520
    :goto_2
    return v1

    .line 3479
    .end local v2    # "ret_sim_icon":I
    :catch_0
    move-exception v0

    .line 3480
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    move v2, v4

    .line 3483
    goto :goto_1

    .line 3490
    .restart local v2    # "ret_sim_icon":I
    :pswitch_0
    const v1, 0x7f020826

    .line 3491
    goto :goto_2

    .line 3493
    :pswitch_1
    const v1, 0x7f020829

    .line 3494
    goto :goto_2

    .line 3496
    :pswitch_2
    const v1, 0x7f02081a

    .line 3497
    goto :goto_2

    .line 3499
    :pswitch_3
    const v1, 0x7f020846

    .line 3500
    goto :goto_2

    .line 3502
    :pswitch_4
    const v1, 0x7f02083c

    .line 3503
    goto :goto_2

    .line 3505
    :pswitch_5
    const v1, 0x7f020838

    .line 3506
    goto :goto_2

    .line 3508
    :pswitch_6
    const v1, 0x7f020833

    .line 3509
    goto :goto_2

    .line 3511
    :pswitch_7
    const v1, 0x7f020841

    .line 3512
    goto :goto_2

    .line 3514
    :pswitch_8
    const v1, 0x7f02082d

    .line 3515
    goto :goto_2

    .line 3488
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getSimIcon(Ljava/lang/String;)I
    .locals 6
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3408
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3409
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3410
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(I)I

    move-result v0

    .line 3468
    :cond_0
    :goto_0
    return v0

    .line 3412
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(I)I

    move-result v0

    goto :goto_0

    .line 3417
    :cond_2
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    aput-object v5, v1, v4

    aput-object v5, v1, v3

    .line 3419
    .local v1, "simInfo":[Ljava/lang/String;
    sget-boolean v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheckSimIcon:Z

    if-eqz v2, :cond_3

    .line 3420
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->setSimInfo()[Z

    .line 3423
    :cond_3
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3424
    const v0, 0x7f020826

    .line 3425
    .local v0, "retSimIconId":I
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim1Info:[Ljava/lang/String;

    .line 3431
    :goto_1
    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    .line 3432
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3461
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3462
    const v0, 0x7f020826

    goto :goto_0

    .line 3427
    .end local v0    # "retSimIconId":I
    :cond_4
    const v0, 0x7f020829

    .line 3428
    .restart local v0    # "retSimIconId":I
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Info:[Ljava/lang/String;

    goto :goto_1

    .line 3434
    :pswitch_0
    const v0, 0x7f020826

    .line 3435
    goto :goto_0

    .line 3437
    :pswitch_1
    const v0, 0x7f020829

    .line 3438
    goto :goto_0

    .line 3440
    :pswitch_2
    const v0, 0x7f02081a

    .line 3441
    goto :goto_0

    .line 3443
    :pswitch_3
    const v0, 0x7f020846

    .line 3444
    goto :goto_0

    .line 3446
    :pswitch_4
    const v0, 0x7f02083c

    .line 3447
    goto :goto_0

    .line 3449
    :pswitch_5
    const v0, 0x7f020838

    .line 3450
    goto :goto_0

    .line 3452
    :pswitch_6
    const v0, 0x7f020833

    .line 3453
    goto :goto_0

    .line 3455
    :pswitch_7
    const v0, 0x7f020841

    .line 3456
    goto :goto_0

    .line 3458
    :pswitch_8
    const v0, 0x7f02082d

    .line 3459
    goto :goto_0

    .line 3464
    :cond_5
    const v0, 0x7f020829

    goto :goto_0

    .line 3432
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getSimIconChanged()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3825
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSimIconChanged called] mSimInfoChanged :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimInfoChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3826
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForGG()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3827
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim1Info:[Ljava/lang/String;

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    const-string v0, "gsm.sim.icon"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim1Info:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Info:[Ljava/lang/String;

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    const-string v0, "gsm.sim.icon2"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Info:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3829
    :cond_1
    sput-boolean v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimInfoChanged:Z

    .line 3833
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimInfoChanged:Z

    return v0
.end method

.method public getSimInfo()[Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3315
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3316
    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_0

    .line 3317
    new-array v0, v5, [Z

    fill-array-data v0, :array_0

    .line 3318
    .local v0, "returnValue":[Z
    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    aput-boolean v3, v2, v3

    .line 3319
    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    aput-boolean v3, v2, v4

    .line 3327
    .end local v0    # "returnValue":[Z
    :goto_0
    return-object v0

    .line 3322
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    goto :goto_0

    .line 3326
    :cond_1
    new-array v1, v5, [Z

    fill-array-data v1, :array_1

    .local v1, "simChanged":[Z
    move-object v0, v1

    .line 3327
    goto :goto_0

    .line 3317
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 3326
    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public getSimName(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 3382
    const/4 v0, 0x0

    .line 3383
    .local v0, "value":Ljava/lang/String;
    if-nez p1, :cond_4

    .line 3384
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3385
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3387
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 3388
    :cond_0
    const-string v0, "SIM 2"

    .line 3403
    :cond_1
    :goto_0
    const-string v1, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContactDS SIM NAME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    return-object v0

    .line 3390
    :cond_2
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3392
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 3393
    :cond_3
    const-string v0, "SIM 1"

    goto :goto_0

    .line 3396
    :cond_4
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3399
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 3400
    :cond_5
    const-string v0, "SIM 2"

    goto :goto_0
.end method

.method public getSimName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3347
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3348
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3349
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v0

    .line 3378
    :cond_0
    :goto_0
    return-object v0

    .line 3351
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3355
    :cond_2
    const/4 v0, 0x0

    .line 3356
    .local v0, "name":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    aput-object v5, v1, v4

    aput-object v5, v1, v3

    .line 3358
    .local v1, "simInfo":[Ljava/lang/String;
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3359
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim1Info:[Ljava/lang/String;

    .line 3360
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3361
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0282

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3374
    :goto_1
    aget-object v2, v1, v4

    if-eqz v2, :cond_0

    .line 3375
    aget-object v0, v1, v4

    goto :goto_0

    .line 3362
    :cond_3
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForGG()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3363
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    const v3, 0x7f0e03ef

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3365
    :cond_4
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0281

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3367
    :cond_5
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Info:[Ljava/lang/String;

    .line 3368
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3369
    const-string v0, "SIM"

    goto :goto_1

    .line 3371
    :cond_6
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    const v3, 0x7f0e03f0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getSimPopupIcon(I)I
    .locals 6
    .param p1, "simId"    # I

    .prologue
    .line 3589
    const/4 v2, 0x0

    .line 3590
    .local v2, "simIconIndex":I
    const/4 v1, 0x0

    .line 3593
    .local v1, "returnId":I
    if-nez p1, :cond_1

    .line 3594
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3595
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3610
    :goto_0
    const-string v3, "PhoneBookManageSim"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM ICON : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ret_sim_icon = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    packed-switch v2, :pswitch_data_0

    .line 3641
    const v1, 0x7f020826

    .line 3644
    :goto_1
    return v1

    .line 3598
    :cond_0
    :try_start_1
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 3601
    :cond_1
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0

    .line 3605
    :catch_0
    move-exception v0

    .line 3607
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 3614
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :pswitch_0
    const v1, 0x7f020826

    .line 3615
    goto :goto_1

    .line 3617
    :pswitch_1
    const v1, 0x7f020829

    .line 3618
    goto :goto_1

    .line 3620
    :pswitch_2
    const v1, 0x7f02081a

    .line 3621
    goto :goto_1

    .line 3623
    :pswitch_3
    const v1, 0x7f020846

    .line 3624
    goto :goto_1

    .line 3626
    :pswitch_4
    const v1, 0x7f02083c

    .line 3627
    goto :goto_1

    .line 3629
    :pswitch_5
    const v1, 0x7f020838

    .line 3630
    goto :goto_1

    .line 3632
    :pswitch_6
    const v1, 0x7f020833

    .line 3633
    goto :goto_1

    .line 3635
    :pswitch_7
    const v1, 0x7f020841

    .line 3636
    goto :goto_1

    .line 3638
    :pswitch_8
    const v1, 0x7f02082d

    .line 3639
    goto :goto_1

    .line 3612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getSimPopupIcon(Ljava/lang/String;)I
    .locals 6
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3524
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3525
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3526
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimPopupIcon(I)I

    move-result v0

    .line 3585
    :cond_0
    :goto_0
    return v0

    .line 3528
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimPopupIcon(I)I

    move-result v0

    goto :goto_0

    .line 3533
    :cond_2
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    aput-object v5, v1, v4

    aput-object v5, v1, v3

    .line 3535
    .local v1, "simInfo":[Ljava/lang/String;
    sget-boolean v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheckSimPopupIcon:Z

    if-eqz v2, :cond_3

    .line 3536
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->setSimInfo()[Z

    .line 3539
    :cond_3
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3540
    const v0, 0x7f020826

    .line 3541
    .local v0, "retSimIconId":I
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim1Info:[Ljava/lang/String;

    .line 3547
    :goto_1
    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    .line 3548
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3577
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3578
    const v0, 0x7f020826

    goto :goto_0

    .line 3543
    .end local v0    # "retSimIconId":I
    :cond_4
    const v0, 0x7f020829

    .line 3544
    .restart local v0    # "retSimIconId":I
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Info:[Ljava/lang/String;

    goto :goto_1

    .line 3550
    :pswitch_0
    const v0, 0x7f020826

    .line 3551
    goto :goto_0

    .line 3553
    :pswitch_1
    const v0, 0x7f020829

    .line 3554
    goto :goto_0

    .line 3556
    :pswitch_2
    const v0, 0x7f02081a

    .line 3557
    goto :goto_0

    .line 3559
    :pswitch_3
    const v0, 0x7f020846

    .line 3560
    goto :goto_0

    .line 3562
    :pswitch_4
    const v0, 0x7f02083c

    .line 3563
    goto :goto_0

    .line 3565
    :pswitch_5
    const v0, 0x7f020838

    .line 3566
    goto :goto_0

    .line 3568
    :pswitch_6
    const v0, 0x7f020833

    .line 3569
    goto :goto_0

    .line 3571
    :pswitch_7
    const v0, 0x7f020841

    .line 3572
    goto :goto_0

    .line 3574
    :pswitch_8
    const v0, 0x7f02082d

    .line 3575
    goto :goto_0

    .line 3580
    :cond_5
    const v0, 0x7f020829

    goto :goto_0

    .line 3548
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getSimStatus(Ljava/lang/String;)V
    .locals 13
    .param p1, "mSimType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1562
    const-string v6, "1"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "3"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "4"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1563
    :cond_0
    const-string v6, "PhoneBookManageSim"

    const-string v7, "getSimStatus Start : 2G"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    const/4 v6, 0x5

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    .line 1566
    .local v3, "recordInfo":[I
    :try_start_0
    const-string v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1568
    .local v2, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_1

    .line 1569
    const/16 v6, 0x6f3a

    invoke-interface {v2, v6}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfo(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 1578
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 1579
    aget v6, v3, v12

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    .line 1580
    aget v6, v3, v9

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    .line 1581
    aget v6, v3, v11

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    .line 1582
    aget v6, v3, v8

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    .line 1584
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mMaxCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mUsedCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mNameLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mNumberLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    .end local v3    # "recordInfo":[I
    :cond_2
    :goto_1
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    if-nez v6, :cond_3

    .line 1664
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 1667
    :cond_3
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    .line 1670
    .local v4, "simState":I
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1671
    invoke-static {v12}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v4

    .line 1674
    :cond_4
    sget v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_5

    const/4 v6, 0x5

    if-ne v4, v6, :cond_5

    .line 1677
    const-string v6, "PhoneBookManageSim"

    const-string v7, "Failed to get strogae info. Sim is initializing"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    sput-boolean v9, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 1680
    :cond_5
    const-string v6, "PhoneBookManageSim"

    const-string v7, "getSimStatus End"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    return-void

    .line 1571
    .end local v4    # "simState":I
    .restart local v3    # "recordInfo":[I
    :catch_0
    move-exception v1

    .line 1572
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "PhoneBookManageSim"

    const-string v7, "RemoteException occured"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1573
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1574
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v6, "PhoneBookManageSim"

    const-string v7, "SecurityException occured"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1575
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 1576
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "PhoneBookManageSim"

    const-string v7, "NullPointerException occured"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1589
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "recordInfo":[I
    :cond_6
    const-string v6, "2"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1590
    const-string v6, "PhoneBookManageSim"

    const-string v7, "getSimStatus Start : 3G"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    new-instance v5, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;-><init>()V

    .line 1592
    .local v5, "usimPhonebookCapaInfo":Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 1594
    .local v0, "anrConfigValue":I
    :try_start_1
    const-string v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1596
    .restart local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_7

    .line 1597
    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .line 1604
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_7
    :goto_2
    if-eqz v5, :cond_2

    .line 1605
    invoke-virtual {v5, v9, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    .line 1607
    invoke-virtual {v5, v9, v11}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    .line 1609
    invoke-virtual {v5, v9, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    .line 1611
    invoke-virtual {v5, v10, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    .line 1614
    invoke-virtual {v5, v8, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    .line 1616
    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    .line 1618
    invoke-virtual {v5, v8, v11}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    .line 1621
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mMaxCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mUsedCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mNameLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mNumberLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mEmailLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mEmailMaxIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mEmailUsedIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    if-lez v0, :cond_2

    .line 1630
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    invoke-virtual {v5, v11, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v7

    aput v7, v6, v12

    .line 1632
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    invoke-virtual {v5, v11, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v7

    aput v7, v6, v12

    .line 1634
    if-le v0, v11, :cond_8

    .line 1635
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    const/16 v7, 0x8

    invoke-virtual {v5, v7, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v7

    aput v7, v6, v9

    .line 1637
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    const/16 v7, 0x8

    invoke-virtual {v5, v7, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v7

    aput v7, v6, v9

    .line 1640
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    const/16 v7, 0x9

    invoke-virtual {v5, v7, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v7

    aput v7, v6, v10

    .line 1642
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    const/16 v7, 0x9

    invoke-virtual {v5, v7, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v7

    aput v7, v6, v10

    .line 1645
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    const/16 v7, 0xa

    invoke-virtual {v5, v7, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v7

    aput v7, v6, v11

    .line 1647
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    const/16 v7, 0xa

    invoke-virtual {v5, v7, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v7

    aput v7, v6, v11

    .line 1650
    :cond_8
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrLength[ANR_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    aget v8, v8, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrMaxIndex[ANR_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v8, v8, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    if-le v0, v11, :cond_2

    .line 1653
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrLength[ANR_A_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrMaxIndex[ANR_A_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrLength[ANR_B_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrMaxIndex[ANR_B_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrLength[ANR_C_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    aget v8, v8, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    const-string v6, "PhoneBookManageSim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrMaxIndex[ANR_C_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v8, v8, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1599
    :catch_3
    move-exception v1

    .line 1600
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "PhoneBookManageSim"

    const-string v7, "RemoteException occured"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1601
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_4
    move-exception v1

    .line 1602
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v6, "PhoneBookManageSim"

    const-string v7, "SecurityException occured"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1564
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public getSimStatus(Ljava/lang/String;I)V
    .locals 13
    .param p1, "mSim2Type"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1863
    if-eqz p2, :cond_0

    .line 1869
    invoke-virtual {p0, p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isInvalidDynamicMultiSim(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1997
    :goto_0
    return-void

    .line 1865
    :cond_0
    const-string v6, "ril.ICC_TYPE"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 1873
    :cond_1
    const-string v6, "1"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "3"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1874
    :cond_2
    const-string v6, "PhoneBookManageSim2"

    const-string v7, "getSimStatus Start : 2G"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    const/4 v6, 0x5

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    .line 1885
    .local v3, "recordInfo":[I
    :try_start_0
    const-string v6, "simphonebook"

    invoke-static {v6, p2}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1887
    .local v2, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_3

    .line 1888
    const/16 v6, 0x6f3a

    invoke-interface {v2, v6}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfo(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 1899
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 1900
    aget v6, v3, v12

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    .line 1901
    aget v6, v3, v9

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    .line 1902
    aget v6, v3, v11

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    .line 1903
    aget v6, v3, v8

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    .line 1989
    .end local v3    # "recordInfo":[I
    :cond_4
    :goto_2
    invoke-static {p2}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v4

    .line 1991
    .local v4, "simState":I
    sget v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    const/4 v6, 0x5

    if-ne v4, v6, :cond_5

    .line 1993
    const-string v6, "PhoneBookManageSim2"

    const-string v7, "Failed to get strogae info. Sim2 is initializing"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    sput-boolean v9, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 1996
    :cond_5
    const-string v6, "PhoneBookManageSim2"

    const-string v7, "getSimStatus End"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1890
    .end local v4    # "simState":I
    .restart local v3    # "recordInfo":[I
    :catch_0
    move-exception v1

    .line 1891
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "PhoneBookManageSim"

    const-string v7, "RemoteException occured"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1892
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1893
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v6, "PhoneBookManageSim"

    const-string v7, "SecurityException occured"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1894
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 1895
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "PhoneBookManageSim"

    const-string v7, "NullPointerException occured"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1905
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "recordInfo":[I
    :cond_6
    const-string v6, "2"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1906
    const-string v6, "PhoneBookManageSim2"

    const-string v7, "getSimStatus Start : 3G"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 1908
    .local v0, "anrConfigValue":I
    new-instance v5, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;-><init>()V

    .line 1918
    .local v5, "usimPhonebookCapaInfo":Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_start_1
    const-string v6, "simphonebook"

    invoke-static {v6, p2}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1919
    .restart local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_7

    .line 1920
    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .line 1929
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_7
    :goto_3
    if-eqz v5, :cond_4

    .line 1930
    invoke-virtual {v5, v9, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    .line 1932
    invoke-virtual {v5, v9, v11}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    .line 1934
    invoke-virtual {v5, v9, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    .line 1936
    invoke-virtual {v5, v10, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    .line 1939
    invoke-virtual {v5, v8, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    .line 1941
    invoke-virtual {v5, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex2:I

    .line 1943
    invoke-virtual {v5, v8, v11}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    .line 1946
    const-string v6, "PhoneBookManageSim2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mMaxCount2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    const-string v6, "PhoneBookManageSim2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mUsedCount2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    const-string v6, "PhoneBookManageSim2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mNameLength2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    const-string v6, "PhoneBookManageSim2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mNumberLength2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    const-string v6, "PhoneBookManageSim2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mEmailLength2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    const-string v6, "PhoneBookManageSim2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mEmailMaxIndex2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    const-string v6, "PhoneBookManageSim2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mEmailUsedIndex2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    if-lez v0, :cond_4

    .line 1955
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength2:[I

    invoke-virtual {v5, v11, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v7

    aput v7, v6, v12

    .line 1957
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    invoke-virtual {v5, v11, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v7

    aput v7, v6, v12

    .line 1959
    if-le v0, v11, :cond_8

    .line 1960
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength2:[I

    const/16 v7, 0x8

    invoke-virtual {v5, v7, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v7

    aput v7, v6, v9

    .line 1962
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    const/16 v7, 0x8

    invoke-virtual {v5, v7, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v7

    aput v7, v6, v9

    .line 1965
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength2:[I

    const/16 v7, 0x9

    invoke-virtual {v5, v7, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v7

    aput v7, v6, v10

    .line 1967
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    const/16 v7, 0x9

    invoke-virtual {v5, v7, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v7

    aput v7, v6, v10

    .line 1970
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength2:[I

    const/16 v7, 0xa

    invoke-virtual {v5, v7, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v7

    aput v7, v6, v11

    .line 1972
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    const/16 v7, 0xa

    invoke-virtual {v5, v7, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v7

    aput v7, v6, v11

    .line 1975
    :cond_8
    const-string v6, "PhoneBookManageSim2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrLength2[ANR_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength2:[I

    aget v8, v8, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    const-string v6, "PhoneBookManageSim2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrMaxIndex2[ANR_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v8, v8, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    if-le v0, v11, :cond_4

    .line 1978
    const-string v6, "PhoneBookManageSim2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrLength2[ANR_A_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength2:[I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    const-string v6, "PhoneBookManageSim2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrMaxIndex2[ANR_A_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    const-string v6, "PhoneBookManageSim2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrLength2[ANR_B_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength2:[I

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    const-string v6, "PhoneBookManageSim2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrMaxIndex2[ANR_B_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    const-string v6, "PhoneBookManageSim2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrLength2[ANR_C_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength2:[I

    aget v8, v8, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    const-string v6, "PhoneBookManageSim2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimStatus : mAnrMaxIndex2[ANR_C_INDEX] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v8, v8, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1922
    :catch_3
    move-exception v1

    .line 1923
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "PhoneBookManageSim"

    const-string v7, "RemoteException occured"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1924
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_4
    move-exception v1

    .line 1925
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v6, "PhoneBookManageSim"

    const-string v7, "SecurityException occured"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1875
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public getSimStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "simType"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1686
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 1688
    .local v0, "anrConfigValue":I
    if-nez p1, :cond_0

    .line 1690
    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1691
    const-string v5, "ril.ICC_TYPE"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 1692
    sget-object p1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 1699
    :cond_0
    :goto_0
    const-string v5, "1"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "3"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "4"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1700
    :cond_1
    const-string v5, "PhoneBookManageSim"

    const-string v6, "getSimStatus Start : 2G"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    const/4 v5, 0x5

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 1703
    .local v3, "recordInfo":[I
    const/4 v2, 0x0

    .line 1704
    .local v2, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :try_start_0
    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1705
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1709
    :goto_1
    if-eqz v2, :cond_2

    .line 1710
    const/16 v5, 0x6f3a

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfo(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 1719
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 1720
    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1721
    aget v5, v3, v11

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    .line 1722
    aget v5, v3, v8

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    .line 1723
    aget v5, v3, v10

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    .line 1724
    aget v5, v3, v7

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    .line 1726
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mMaxCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mUsedCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mNameLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mNumberLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v3    # "recordInfo":[I
    :cond_3
    :goto_3
    return-void

    .line 1694
    :cond_4
    const-string v5, "ril.ICC_TYPE2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    .line 1695
    sget-object p1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    goto/16 :goto_0

    .line 1707
    .restart local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v3    # "recordInfo":[I
    :cond_5
    :try_start_1
    const-string v5, "simphonebook2"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    goto/16 :goto_1

    .line 1712
    :catch_0
    move-exception v1

    .line 1713
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "PhoneBookManageSim"

    const-string v6, "RemoteException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1714
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1715
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v5, "PhoneBookManageSim"

    const-string v6, "SecurityException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1716
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 1717
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v5, "PhoneBookManageSim"

    const-string v6, "NullPointerException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1731
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_6
    aget v5, v3, v11

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    .line 1732
    aget v5, v3, v8

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    .line 1733
    aget v5, v3, v10

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    .line 1734
    aget v5, v3, v7

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    .line 1736
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mMaxCount2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mUsedCount2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mNameLength2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mNumberLength2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1743
    .end local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v3    # "recordInfo":[I
    :cond_7
    const-string v5, "2"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1744
    const-string v5, "PhoneBookManageSim"

    const-string v6, "getSimStatus Start : 3G"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    new-instance v4, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;-><init>()V

    .line 1747
    .local v4, "usimPhonebookCapaInfo":Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    const/4 v2, 0x0

    .line 1748
    .restart local v2    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :try_start_2
    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1749
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1753
    :goto_4
    if-eqz v2, :cond_8

    .line 1754
    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v4

    .line 1762
    :cond_8
    :goto_5
    if-eqz v4, :cond_3

    .line 1763
    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1764
    invoke-virtual {v4, v8, v8}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    .line 1766
    invoke-virtual {v4, v8, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    .line 1768
    invoke-virtual {v4, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    .line 1770
    invoke-virtual {v4, v9, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    .line 1773
    invoke-virtual {v4, v7, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    .line 1775
    invoke-virtual {v4, v7, v8}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    .line 1777
    invoke-virtual {v4, v7, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    .line 1780
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mMaxCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mUsedCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mNameLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mNumberLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mEmailLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mEmailMaxIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mEmailUsedIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    if-lez v0, :cond_3

    .line 1789
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    invoke-virtual {v4, v10, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v11

    .line 1791
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    invoke-virtual {v4, v10, v8}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v11

    .line 1793
    if-le v0, v10, :cond_3

    .line 1794
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    const/16 v6, 0x8

    invoke-virtual {v4, v6, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v8

    .line 1796
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    const/16 v6, 0x8

    invoke-virtual {v4, v6, v8}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v8

    .line 1799
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    const/16 v6, 0x9

    invoke-virtual {v4, v6, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v9

    .line 1801
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    const/16 v6, 0x9

    invoke-virtual {v4, v6, v8}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v9

    .line 1804
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrLength:[I

    const/16 v6, 0xa

    invoke-virtual {v4, v6, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v10

    .line 1806
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    const/16 v6, 0xa

    invoke-virtual {v4, v6, v8}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v10

    goto/16 :goto_3

    .line 1751
    :cond_9
    :try_start_3
    const-string v5, "simphonebook2"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v2

    goto/16 :goto_4

    .line 1756
    :catch_3
    move-exception v1

    .line 1757
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "PhoneBookManageSim"

    const-string v6, "RemoteException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1758
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_4
    move-exception v1

    .line 1759
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v5, "PhoneBookManageSim"

    const-string v6, "SecurityException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1811
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_a
    invoke-virtual {v4, v8, v8}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    .line 1813
    invoke-virtual {v4, v8, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    .line 1815
    invoke-virtual {v4, v8, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    .line 1817
    invoke-virtual {v4, v9, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    .line 1820
    invoke-virtual {v4, v7, v9}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    .line 1822
    invoke-virtual {v4, v7, v8}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex2:I

    .line 1824
    invoke-virtual {v4, v7, v10}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    .line 1827
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mMaxCount2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mUsedCount2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mNameLength2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNameLength2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mNumberLength2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mNumberLength2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mEmailLength2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailLength2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mEmailMaxIndex2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimStatus : mEmailUsedIndex2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1701
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public getSimType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2511
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 2512
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    return-object v0
.end method

.method public getSimType(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 2528
    if-eqz p1, :cond_0

    .line 2533
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isInvalidDynamicMultiSim(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2534
    const/4 v0, 0x0

    .line 2538
    :goto_0
    return-object v0

    .line 2530
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2537
    :cond_1
    const-string v0, "ril.ICC_TYPE2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    .line 2538
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSimType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 2518
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2519
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 2520
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 2523
    :goto_0
    return-object v0

    .line 2522
    :cond_0
    const-string v0, "ril.ICC_TYPE2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    .line 2523
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSlotIdWithProfileId(I)I
    .locals 4
    .param p1, "profileId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 4003
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4004
    invoke-static {v0}, Lcom/android/internal/telephony/MultiSimManager;->getIndexSimProfile(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 4011
    :goto_0
    return v0

    .line 4006
    :cond_0
    invoke-static {v1}, Lcom/android/internal/telephony/MultiSimManager;->getIndexSimProfile(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    move v0, v1

    .line 4007
    goto :goto_0

    :cond_1
    move v0, v2

    .line 4009
    goto :goto_0

    :cond_2
    move v0, v2

    .line 4011
    goto :goto_0
.end method

.method public getSlotProfileId(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 3996
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3997
    invoke-static {p1}, Lcom/android/internal/telephony/MultiSimManager;->getIndexSimProfile(I)I

    move-result v0

    .line 3999
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSlotSwitchingState()Z
    .locals 3

    .prologue
    .line 3842
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSlotSwitchingState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSlotSwitchingState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSlotSwitchingState:Z

    return v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 3191
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3193
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    .line 3195
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getUsedCount()I
    .locals 1

    .prologue
    .line 2335
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_0

    .line 2336
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 2337
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 2339
    :cond_0
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    return v0
.end method

.method public getUsedCount(I)I
    .locals 2
    .param p1, "simId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2362
    if-eqz p1, :cond_0

    .line 2367
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isInvalidDynamicMultiSim(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2375
    :goto_0
    return v0

    .line 2364
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getUsedCount()I

    move-result v0

    goto :goto_0

    .line 2371
    :cond_1
    sget-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v1, :cond_2

    .line 2372
    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2373
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;I)V

    .line 2375
    :cond_2
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    goto :goto_0
.end method

.method public getUsedCount(Ljava/lang/String;)I
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 2345
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2346
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getUsedCount()I

    move-result v0

    .line 2358
    :goto_0
    return v0

    .line 2349
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2350
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getUsedCount(I)I

    move-result v0

    goto :goto_0

    .line 2353
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v0, :cond_2

    .line 2354
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 2355
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    :cond_2
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 3154
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3156
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .line 3158
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    goto :goto_0
.end method

.method public hasIccCard(I)Z
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 3176
    if-nez p1, :cond_0

    .line 3177
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v0

    .line 3186
    :goto_0
    return v0

    .line 3180
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3181
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isInvalidDynamicMultiSim(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3182
    const/4 v0, 0x0

    goto :goto_0

    .line 3184
    :cond_1
    invoke-static {p1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    goto :goto_0

    .line 3186
    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtilDsds;->hasIccCard(I)Z

    move-result v0

    goto :goto_0
.end method

.method public hasIccCard(Ljava/lang/String;)Z
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 3165
    const-string v0, "vnd.sec.contact.sim2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3166
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3167
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(I)Z

    move-result v0

    .line 3171
    :goto_0
    return v0

    .line 3169
    :cond_0
    invoke-static {v1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    goto :goto_0

    .line 3171
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v0

    goto :goto_0
.end method

.method public isAnrFull(I)Z
    .locals 9
    .param p1, "anrIndex"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v3, 0x1

    .line 2949
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 2950
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 2953
    :cond_0
    const-string v5, "2"

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3004
    :cond_1
    :goto_0
    return v3

    .line 2957
    :cond_2
    sget-boolean v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v5, :cond_3

    .line 2958
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2961
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2966
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2970
    new-instance v2, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;-><init>()V

    .line 2972
    .local v2, "mUsimPhonebookCapaInfo":Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_start_0
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 2973
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_4

    .line 2974
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2982
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_4
    :goto_1
    if-eqz v2, :cond_6

    .line 2983
    if-nez p1, :cond_7

    .line 2984
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    invoke-virtual {v2, v7, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v4

    .line 2996
    :cond_5
    :goto_2
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAnrFull() : mAnrMaxIndex["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mAnrUsedIndex["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    :cond_6
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v5, v5, p1

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    aget v6, v6, p1

    if-le v5, v6, :cond_a

    .line 3000
    const-string v3, "PhoneBookManageSim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAnrFull() : false max("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") used("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 3001
    goto/16 :goto_0

    .line 2976
    :catch_0
    move-exception v0

    .line 2977
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "PhoneBookManageSim"

    const-string v6, "RemoteException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2978
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2979
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v5, "PhoneBookManageSim"

    const-string v6, "SecurityException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2986
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_7
    if-ne p1, v3, :cond_8

    .line 2987
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    const/16 v6, 0x8

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v3

    goto/16 :goto_2

    .line 2989
    :cond_8
    if-ne p1, v8, :cond_9

    .line 2990
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    const/16 v6, 0x9

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v8

    goto/16 :goto_2

    .line 2992
    :cond_9
    if-ne p1, v7, :cond_5

    .line 2993
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    const/16 v6, 0xa

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v7

    goto/16 :goto_2

    .line 3003
    :cond_a
    const-string v4, "PhoneBookManageSim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAnrFull() : true max("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") used("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public isAnrFull(II)Z
    .locals 9
    .param p1, "anrIndex"    # I
    .param p2, "simId"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v4, 0x1

    .line 3074
    if-nez p2, :cond_1

    .line 3075
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v3

    .line 3146
    :cond_0
    :goto_0
    return v3

    .line 3078
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isInvalidDynamicMultiSim(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3082
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 3083
    invoke-virtual {p0, p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 3086
    :cond_2
    const-string v5, "2"

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    .line 3087
    goto :goto_0

    .line 3090
    :cond_3
    sget-boolean v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v5, :cond_5

    .line 3091
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v5

    if-nez v5, :cond_4

    move v3, v4

    .line 3092
    goto :goto_0

    .line 3094
    :cond_4
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v5

    if-nez v5, :cond_5

    move v3, v4

    .line 3095
    goto :goto_0

    .line 3099
    :cond_5
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(II)Z

    move-result v5

    if-nez v5, :cond_6

    move v3, v4

    .line 3100
    goto :goto_0

    .line 3103
    :cond_6
    new-instance v2, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;-><init>()V

    .line 3113
    .local v2, "mUsimPhonebookCapaInfo":Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_start_0
    const-string v5, "simphonebook"

    invoke-static {v5, p2}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 3114
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_7

    .line 3115
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 3124
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_7
    :goto_1
    if-eqz v2, :cond_9

    .line 3125
    if-nez p1, :cond_a

    .line 3126
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    invoke-virtual {v2, v7, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v3

    .line 3138
    :cond_8
    :goto_2
    const-string v5, "PhoneBookManageSim2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAnrFull() : mAnrMaxIndex2["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mAnrUsedIndex2["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    :cond_9
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v5, v5, p1

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    aget v6, v6, p1

    if-le v5, v6, :cond_d

    .line 3142
    const-string v4, "PhoneBookManageSim2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAnrFull() : false max("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") used("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3117
    :catch_0
    move-exception v0

    .line 3118
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "PhoneBookManageSim"

    const-string v6, "RemoteException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3119
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3120
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v5, "PhoneBookManageSim"

    const-string v6, "SecurityException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3128
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_a
    if-ne p1, v4, :cond_b

    .line 3129
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    const/16 v6, 0x8

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v4

    goto/16 :goto_2

    .line 3131
    :cond_b
    if-ne p1, v8, :cond_c

    .line 3132
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    const/16 v6, 0x9

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v8

    goto/16 :goto_2

    .line 3134
    :cond_c
    if-ne p1, v7, :cond_8

    .line 3135
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    const/16 v6, 0xa

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v7

    goto/16 :goto_2

    .line 3145
    :cond_d
    const-string v3, "PhoneBookManageSim2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAnrFull() : true max("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") used("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 3146
    goto/16 :goto_0
.end method

.method public isAnrFull(ILjava/lang/String;)Z
    .locals 10
    .param p1, "anrIndex"    # I
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v8, 0x3

    const/4 v3, 0x1

    .line 3009
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAnrFull() : anrIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", accountType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3011
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v3

    .line 3070
    :cond_0
    :goto_0
    return v3

    .line 3014
    :cond_1
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3015
    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(II)Z

    move-result v3

    goto :goto_0

    .line 3018
    :cond_2
    const-string v5, "2"

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3022
    sget-boolean v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v5, :cond_3

    .line 3023
    invoke-virtual {p0, p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3026
    invoke-virtual {p0, p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3031
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported2(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3035
    new-instance v2, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;-><init>()V

    .line 3037
    .local v2, "usimPhonebookCapaInfo":Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_start_0
    const-string v5, "simphonebook2"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 3039
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_4

    .line 3040
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 3048
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_4
    :goto_1
    if-eqz v2, :cond_0

    .line 3049
    if-nez p1, :cond_6

    .line 3050
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    invoke-virtual {v2, v8, v8}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v4

    .line 3063
    :cond_5
    :goto_2
    const-string v5, "PhoneBookManageSim2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAnrFull() : mAnrMaxIndex2["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mAnrUsedIndex2["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v5, v5, p1

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    aget v6, v6, p1

    if-le v5, v6, :cond_9

    .line 3065
    const-string v3, "PhoneBookManageSim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAnrFull() : false max2("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") used2("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 3066
    goto/16 :goto_0

    .line 3042
    :catch_0
    move-exception v0

    .line 3043
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "PhoneBookManageSim"

    const-string v6, "RemoteException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3044
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3045
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v5, "PhoneBookManageSim"

    const-string v6, "SecurityException occured"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3052
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_6
    if-ne p1, v3, :cond_7

    .line 3053
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    const/16 v6, 0x8

    invoke-virtual {v2, v6, v8}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v3

    goto/16 :goto_2

    .line 3055
    :cond_7
    if-ne p1, v9, :cond_8

    .line 3056
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    const/16 v6, 0x9

    invoke-virtual {v2, v6, v8}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v9

    goto/16 :goto_2

    .line 3058
    :cond_8
    if-ne p1, v8, :cond_5

    .line 3059
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    const/16 v6, 0xa

    invoke-virtual {v2, v6, v8}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    aput v6, v5, v8

    goto/16 :goto_2

    .line 3068
    :cond_9
    const-string v4, "PhoneBookManageSim2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAnrFull() : true max2("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") used2("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrUsedIndex2:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public isAnrSupported(I)Z
    .locals 3
    .param p1, "anrIndex"    # I

    .prologue
    .line 2914
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    .line 2915
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnrSupported = mAnrMaxIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    const/4 v0, 0x1

    .line 2918
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnrSupported(II)Z
    .locals 3
    .param p1, "anrIndex"    # I
    .param p2, "simId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2922
    if-nez p2, :cond_1

    .line 2923
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v0

    .line 2934
    :cond_0
    :goto_0
    return v0

    .line 2926
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isInvalidDynamicMultiSim(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2930
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex2:[I

    aget v1, v1, p1

    if-lez v1, :cond_0

    .line 2931
    const-string v0, "PhoneBookManageSim2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnrSupported = mAnrMaxIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mAnrMaxIndex:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAnrSupported2(I)Z
    .locals 1
    .param p1, "anrIndex"    # I

    .prologue
    .line 2945
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentNetworkChanged()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3933
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3934
    const/4 v1, 0x0

    .line 3936
    .local v1, "index":I
    :try_start_0
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "prefered_voice_call"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3942
    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    .line 3943
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3944
    .local v2, "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_1

    .line 3967
    .end local v1    # "index":I
    .end local v2    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v4

    .line 3937
    .restart local v1    # "index":I
    :catch_0
    move-exception v3

    .line 3938
    .local v3, "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 3948
    .end local v3    # "se":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v2    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 3949
    goto :goto_0

    .line 3950
    :catch_1
    move-exception v0

    .line 3951
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ITelephony threw RemoteException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3953
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_2
    const/4 v6, 0x3

    if-ne v1, v6, :cond_0

    .line 3954
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3955
    .restart local v2    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3959
    :try_start_2
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    if-eq v6, v5, :cond_0

    move v4, v5

    .line 3960
    goto :goto_0

    .line 3961
    :catch_2
    move-exception v0

    .line 3962
    .restart local v0    # "ex":Landroid/os/RemoteException;
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ITelephony threw RemoteException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isDiffwithPreferredSimLine(I)Z
    .locals 5
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x0

    .line 3971
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3972
    const/4 v0, 0x0

    .line 3974
    .local v0, "index":I
    :try_start_0
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "prefered_voice_call"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3984
    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 3992
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return v2

    .line 3975
    .restart local v0    # "index":I
    :catch_0
    move-exception v1

    .line 3976
    .local v1, "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 3986
    .end local v1    # "se":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    add-int/lit8 v3, p1, 0x2

    if-eq v0, v3, :cond_0

    .line 3989
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isEmailFull()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2183
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_1

    .line 2184
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    .line 2209
    :goto_0
    return v0

    .line 2187
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    .line 2188
    goto :goto_0

    .line 2194
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "emails"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2195
    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "account_type=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "vnd.sec.contact.sim"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2199
    .local v6, "emailCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2200
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    .line 2201
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2204
    :cond_2
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    if-le v0, v2, :cond_3

    .line 2205
    const-string v0, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmailFull() : false max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " used("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 2206
    goto :goto_0

    .line 2208
    :cond_3
    const-string v0, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmailFull() : true max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " used("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2209
    goto/16 :goto_0
.end method

.method public isEmailFull(I)Z
    .locals 9
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2250
    if-eqz p1, :cond_0

    .line 2255
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isInvalidDynamicMultiSim(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    .line 2284
    :goto_0
    return v0

    .line 2252
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v0

    goto :goto_0

    .line 2259
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v0, :cond_3

    .line 2260
    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    .line 2261
    goto :goto_0

    .line 2263
    :cond_2
    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v7

    .line 2264
    goto :goto_0

    .line 2269
    :cond_3
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "emails"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2270
    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "account_type=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "vnd.sec.contact.sim2"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2274
    .local v6, "emailCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 2275
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    .line 2276
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2279
    :cond_4
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex2:I

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    if-le v0, v2, :cond_5

    .line 2280
    const-string v0, "PhoneBookManageSim2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmailFull() : false max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " used("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 2281
    goto :goto_0

    .line 2283
    :cond_5
    const-string v0, "PhoneBookManageSim2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmailFull() : true max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " used("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2284
    goto/16 :goto_0
.end method

.method public isEmailFull(Ljava/lang/String;)Z
    .locals 9
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2215
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2216
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v0

    .line 2246
    :goto_0
    return v0

    .line 2218
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2219
    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(I)Z

    move-result v0

    goto :goto_0

    .line 2222
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v0, :cond_3

    .line 2223
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    .line 2224
    goto :goto_0

    .line 2226
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v7

    .line 2227
    goto :goto_0

    .line 2232
    :cond_3
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "emails"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2233
    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "account_type=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "vnd.sec.contact.sim2"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2235
    .local v6, "emailCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 2236
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    .line 2237
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2240
    :cond_4
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex2:I

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    if-le v0, v2, :cond_5

    .line 2241
    const-string v0, "PhoneBookManageSim2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmailFull() : false max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " used("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 2242
    goto/16 :goto_0

    .line 2245
    :cond_5
    const-string v0, "PhoneBookManageSim2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmailFull() : true max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailMaxIndex2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " used("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mEmailUsedIndex2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2246
    goto/16 :goto_0
.end method

.method public isGSMCharacters(C)Z
    .locals 3
    .param p1, "mChar"    # C

    .prologue
    .line 870
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGSMCharacters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5f

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x60

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7e

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0xa3

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa5

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xec

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe7

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc5

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x394

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x393

    if-eq p1, v0, :cond_2

    const/16 v0, 0x39b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a9

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a3

    if-eq p1, v0, :cond_2

    const/16 v0, 0x398

    if-eq p1, v0, :cond_2

    const/16 v0, 0x39e

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xdf

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc4

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xdc

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbf

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe4

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xfc

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20ac

    if-ne p1, v0, :cond_3

    .line 883
    :cond_2
    const/4 v0, 0x1

    .line 886
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidDynamicMultiSim(I)Z
    .locals 2
    .param p1, "simId"    # I

    .prologue
    .line 3855
    const-string v0, "PhoneBookManageSim"

    const-string v1, "isInvalidDynamicMultiSim return false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    const/4 v0, 0x0

    return v0
.end method

.method public isServiceNumbersSupport()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 3211
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://icc/sdn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3213
    .local v6, "serviceCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3214
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3215
    const/4 v0, 0x1

    .line 3219
    :goto_0
    return v0

    .line 3217
    :cond_0
    if-eqz v6, :cond_1

    .line 3218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3219
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceNumbersSupport(I)Z
    .locals 9
    .param p1, "simId"    # I

    .prologue
    const/4 v8, 0x0

    .line 3224
    if-nez p1, :cond_0

    .line 3225
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isServiceNumbersSupport()Z

    move-result v0

    .line 3246
    :goto_0
    return v0

    .line 3228
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isInvalidDynamicMultiSim(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    .line 3229
    goto :goto_0

    .line 3233
    :cond_1
    const/4 v7, 0x0

    .line 3234
    .local v7, "serviceCursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 3236
    .local v6, "count":I
    :try_start_0
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://icc2/sdn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->SERVICE_NUMBERS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3238
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 3240
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3243
    if-lez v6, :cond_2

    .line 3244
    const/4 v0, 0x1

    goto :goto_0

    .line 3240
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v8

    .line 3246
    goto :goto_0
.end method

.method public isSimDBReady()Z
    .locals 4

    .prologue
    .line 1483
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSimDBReady(Landroid/content/Context;)Z

    move-result v0

    .line 1484
    .local v0, "simDbReady":Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1485
    const-string v1, "PhoneBookManageSim"

    const-string v2, "SimDB Loading..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :goto_0
    return v0

    .line 1489
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1490
    const-string v1, "ril.ICC_TYPE"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    .line 1491
    sget-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v1, :cond_1

    .line 1492
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 1493
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    .line 1497
    :cond_1
    const-string v1, "PhoneBookManageSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimDBReady() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSimDBReady(I)Z
    .locals 4
    .param p1, "simId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1533
    if-eqz p1, :cond_0

    .line 1538
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isInvalidDynamicMultiSim(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 1557
    :goto_0
    return v0

    .line 1535
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v0

    goto :goto_0

    .line 1542
    :cond_1
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSim2DBReady(Landroid/content/Context;)Z

    move-result v0

    .line 1543
    .local v0, "simDbReady":Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 1544
    const-string v1, "PhoneBookManageSim2"

    const-string v2, "SimDB Loading..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1548
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1549
    const-string v2, "ril.ICC_TYPE2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    .line 1550
    sget-boolean v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v2, :cond_3

    .line 1551
    sput-boolean v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 1552
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;I)V

    .line 1556
    :cond_3
    const-string v1, "PhoneBookManageSim2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimDBReady() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSimDBReady(Ljava/lang/String;)Z
    .locals 5
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1506
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1507
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v0

    .line 1529
    :goto_0
    return v0

    .line 1509
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1510
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v0

    goto :goto_0

    .line 1512
    :cond_1
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSim2DBReady(Landroid/content/Context;)Z

    move-result v0

    .line 1515
    .local v0, "simDbReady":Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 1516
    const-string v1, "PhoneBookManageSim2"

    const-string v2, "SimDB Loading..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1520
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1521
    const-string v2, "ril.ICC_TYPE2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    .line 1522
    sget-boolean v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v2, :cond_3

    .line 1523
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 1524
    sget-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Type:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    :cond_3
    const-string v2, "PhoneBookManageSim2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimDBReady() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1529
    goto :goto_0
.end method

.method public isSimEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1286
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1333
    :cond_0
    :goto_0
    return v1

    .line 1290
    :cond_1
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_2

    .line 1291
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 1293
    :cond_2
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 1296
    .local v0, "simState":I
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1297
    invoke-static {v1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v0

    .line 1300
    :cond_3
    if-eqz v0, :cond_4

    if-ne v0, v2, :cond_5

    .line 1302
    :cond_4
    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    .line 1303
    const-string v2, "PhoneBookManageSim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimEnabled() return false < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1305
    :cond_5
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1306
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_6

    .line 1307
    const-string v2, "PhoneBookManageSim"

    const-string v3, "isSimEnabled() is deactivated : return false"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1312
    :cond_6
    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    if-eq v3, v0, :cond_7

    .line 1313
    sput-boolean v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 1314
    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    .line 1317
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getAdnEditable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1318
    const-string v2, "PhoneBookManageSim"

    const-string v3, "Adn is not editable..."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1322
    :cond_8
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 1327
    const-string v3, "1"

    const-string v4, "ril.initPB"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1328
    const-string v2, "PhoneBookManageSim"

    const-string v3, "isSimEnabled() not PB_INIT."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1332
    :cond_9
    const-string v1, "PhoneBookManageSim"

    const-string v3, "isSimEnabled() return true"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1333
    goto/16 :goto_0
.end method

.method public isSimEnabled(I)Z
    .locals 5
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1429
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1477
    :cond_0
    :goto_0
    return v1

    .line 1433
    :cond_1
    if-eqz p1, :cond_3

    .line 1438
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isInvalidDynamicMultiSim(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1442
    invoke-static {p1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v0

    .line 1445
    .local v0, "simState":I
    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_4

    .line 1447
    :cond_2
    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState2:I

    .line 1448
    const-string v2, "PhoneBookManageSim2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimEnabled() return false < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1435
    .end local v0    # "simState":I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v1

    goto :goto_0

    .line 1450
    .restart local v0    # "simState":I
    :cond_4
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1451
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_5

    .line 1452
    const-string v2, "PhoneBookManageSim2"

    const-string v3, "isSimEnabled() is deactivated : return false"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1457
    :cond_5
    sget v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState2:I

    if-eq v3, v0, :cond_6

    .line 1458
    sput-boolean v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    .line 1459
    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState2:I

    .line 1462
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getAdn2Editable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1463
    const-string v2, "PhoneBookManageSim2"

    const-string v3, "Adn is not editable..."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1467
    :cond_7
    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 1472
    const-string v3, "1"

    const-string v4, "ril.initPB2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1473
    const-string v2, "PhoneBookManageSim"

    const-string v3, "isSimEnabled() not PB_INIT_1."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1476
    :cond_8
    const-string v1, "PhoneBookManageSim2"

    const-string v3, "isSimEnabled() return true"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1477
    goto/16 :goto_0
.end method

.method public isSimEnabled(Ljava/lang/String;)Z
    .locals 9
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1339
    const/4 v0, -0x1

    .line 1340
    .local v0, "arrayIndex":I
    const/4 v1, -0x1

    .line 1341
    .local v1, "cardStatus":I
    const/4 v2, 0x0

    .line 1343
    .local v2, "currentSimState":I
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    .line 1345
    .local v3, "isAirPlaneOn":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 1346
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSimEnabled : isAirPlaneOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :goto_1
    return v4

    .end local v3    # "isAirPlaneOn":Z
    :cond_0
    move v3, v4

    .line 1343
    goto :goto_0

    .line 1350
    .restart local v3    # "isAirPlaneOn":Z
    :cond_1
    const-string v6, "vnd.sec.contact.sim"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1351
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1352
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v4

    goto :goto_1

    .line 1355
    :cond_2
    const-string v6, "1"

    const-string v7, "ril.initPB"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1356
    const-string v5, "PhoneBookManageSim"

    const-string v6, "isSimEnabled() not PB_INIT."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1360
    :cond_3
    const/4 v0, 0x0

    .line 1361
    invoke-static {v4}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 1363
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    .line 1364
    const-string v6, "gsm.sim.currentcardstatus"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1383
    :goto_2
    if-eq v1, v8, :cond_7

    .line 1384
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSimEnabled("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") return false <cardStatus : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1366
    :cond_4
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1367
    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v4

    goto :goto_1

    .line 1370
    :cond_5
    const-string v6, "1"

    const-string v7, "ril.initPB2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1371
    const-string v5, "PhoneBookManageSim2"

    const-string v6, "isSimEnabled() not PB2_INIT."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1375
    :cond_6
    const/4 v0, 0x1

    .line 1376
    invoke-static {v5}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 1378
    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState2:I

    .line 1379
    const-string v6, "gsm.sim.currentcardstatus2"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 1388
    :cond_7
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    if-eq v6, v5, :cond_8

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_8

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    if-ne v6, v8, :cond_a

    .line 1392
    :cond_8
    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1393
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    .line 1397
    :goto_3
    const-string v5, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSimEnabled("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") return false < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1395
    :cond_9
    sget-object v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    sput v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState2:I

    goto :goto_3

    .line 1401
    :cond_a
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    if-eq v2, v6, :cond_b

    .line 1402
    const-string v6, "vnd.sec.contact.sim"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1403
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState:I

    .line 1404
    sput-boolean v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    .line 1411
    :cond_b
    :goto_4
    const-string v6, "vnd.sec.contact.sim"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1412
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getAdnEditable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 1413
    const-string v5, "PhoneBookManageSim"

    const-string v6, "Adn is not editable..."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1406
    :cond_c
    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    sput v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSimState2:I

    .line 1407
    sput-boolean v5, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    goto :goto_4

    .line 1416
    :cond_d
    const-string v6, "vnd.sec.contact.sim2"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1417
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getAdn2Editable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 1418
    const-string v5, "PhoneBookManageSim2"

    const-string v6, "Adn2 is not editable..."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1423
    :cond_e
    const-string v4, "PhoneBookManageSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSimEnabled("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") return true"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1424
    goto/16 :goto_1
.end method

.method public isSimFull()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 2043
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : isFirstCheck "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck:Z

    if-eqz v0, :cond_1

    .line 2045
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    .line 2084
    :goto_0
    return v0

    .line 2048
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v8

    .line 2049
    goto :goto_0

    .line 2056
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2063
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "account_type = \'vnd.sec.contact.sim\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2073
    .local v7, "nameCursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v7, :cond_2

    .line 2074
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    .line 2075
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2078
    :cond_2
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    sget v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    if-le v0, v1, :cond_4

    .line 2079
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : false max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 2080
    goto :goto_0

    .line 2069
    .end local v7    # "nameCursor":Landroid/database/Cursor;
    :cond_3
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/util/Constants;->ADN_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .restart local v7    # "nameCursor":Landroid/database/Cursor;
    goto :goto_1

    .line 2083
    :cond_4
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : true max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 2084
    goto/16 :goto_0
.end method

.method public isSimFull(I)Z
    .locals 10
    .param p1, "simId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 2136
    if-eqz p1, :cond_0

    .line 2141
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isInvalidDynamicMultiSim(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    .line 2179
    :goto_0
    return v0

    .line 2138
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v0

    goto :goto_0

    .line 2145
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v0, :cond_3

    .line 2146
    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v8

    .line 2147
    goto :goto_0

    .line 2149
    :cond_2
    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v8

    .line 2150
    goto :goto_0

    .line 2157
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2159
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "account_type = \'vnd.sec.contact.sim2\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2168
    .local v7, "nameCursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v7, :cond_4

    .line 2169
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    .line 2170
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2173
    :cond_4
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    sget v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    if-le v0, v1, :cond_6

    .line 2174
    const-string v0, "PhoneBookManageSim2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : false max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 2175
    goto :goto_0

    .line 2164
    .end local v7    # "nameCursor":Landroid/database/Cursor;
    :cond_5
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/util/Constants;->ADN2_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .restart local v7    # "nameCursor":Landroid/database/Cursor;
    goto :goto_1

    .line 2178
    :cond_6
    const-string v0, "PhoneBookManageSim2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : true max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 2179
    goto/16 :goto_0
.end method

.method public isSimFull(Ljava/lang/String;)Z
    .locals 10
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 2090
    const-string v0, "vnd.sec.contact.sim"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2091
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v0

    .line 2132
    :goto_0
    return v0

    .line 2093
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2094
    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull(I)Z

    move-result v0

    goto :goto_0

    .line 2097
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheck2:Z

    if-eqz v0, :cond_3

    .line 2098
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v8

    .line 2099
    goto :goto_0

    .line 2101
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v8

    .line 2102
    goto :goto_0

    .line 2110
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2112
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "account_type = \'vnd.sec.contact.sim2\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2121
    .local v7, "nameCursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v7, :cond_4

    .line 2122
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    .line 2123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2126
    :cond_4
    sget v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    sget v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    if-le v0, v1, :cond_6

    .line 2127
    const-string v0, "PhoneBookManageSim2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : false max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 2128
    goto :goto_0

    .line 2117
    .end local v7    # "nameCursor":Landroid/database/Cursor;
    :cond_5
    sget-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/util/Constants;->ADN2_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->ADN_SIMPLE_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .restart local v7    # "nameCursor":Landroid/database/Cursor;
    goto :goto_1

    .line 2131
    :cond_6
    const-string v0, "PhoneBookManageSim2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFull() : true max("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mMaxCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " used("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mUsedCount2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 2132
    goto/16 :goto_0
.end method

.method public isSimSupport()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2830
    const-string v1, "SIM TEST"

    const-string v2, "isSimSupport()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2834
    sget-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2835
    const-string v0, "SIM TEST"

    const-string v1, "hasIccCard() return true from isWifi"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    const/4 v0, 0x1

    .line 2845
    :cond_0
    :goto_0
    return v0

    .line 2838
    :cond_1
    const-string v1, "SIM TEST"

    const-string v2, "isSimSupport() return false from isWifi"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2841
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    .line 2844
    const-string v0, "SIM TEST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimSupport() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->isSimDbSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "from csc feature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->isSimDbSupport()Z

    move-result v0

    goto :goto_0
.end method

.method public isTwoByteGsmDefaultCharacters(C)Z
    .locals 3
    .param p1, "mChar"    # C

    .prologue
    .line 890
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTwoByteGsmDefaultCharacters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/16 v0, 0x5e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20ac

    if-ne p1, v0, :cond_1

    .line 895
    :cond_0
    const/4 v0, 0x1

    .line 897
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUIMCard()Z
    .locals 1

    .prologue
    .line 3207
    const/4 v0, 0x0

    return v0
.end method

.method public resetSimInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3332
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    .line 3333
    .local v0, "sim1Info":[Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    .line 3335
    .local v1, "sim2Info":[Ljava/lang/String;
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3336
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getRegisterInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3337
    sput-object v0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim1Info:[Ljava/lang/String;

    .line 3340
    :cond_0
    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3341
    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getRegisterInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3342
    sput-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Info:[Ljava/lang/String;

    .line 3344
    :cond_1
    return-void
.end method

.method public setCurrentNetwork()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 3875
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3876
    const/4 v1, 0x0

    .line 3878
    .local v1, "index":I
    :try_start_0
    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "prefered_voice_call"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3883
    :goto_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 3884
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3885
    .local v2, "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_1

    .line 3915
    .end local v1    # "index":I
    .end local v2    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_1
    return-void

    .line 3879
    .restart local v1    # "index":I
    :catch_0
    move-exception v3

    .line 3880
    .local v3, "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 3888
    .end local v3    # "se":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v2    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I

    move-result v4

    if-eqz v4, :cond_0

    .line 3890
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3893
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCalls(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3894
    :catch_1
    move-exception v0

    .line 3895
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "PhoneBookManageSim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ITelephony threw RemoteException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3898
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_2
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 3899
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3900
    .restart local v2    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3903
    :try_start_2
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 3905
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3908
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCalls(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 3909
    :catch_2
    move-exception v0

    .line 3910
    .restart local v0    # "ex":Landroid/os/RemoteException;
    const-string v4, "PhoneBookManageSim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ITelephony threw RemoteException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setSimIconChanged(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 3837
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimIconChanged flag :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    sput-boolean p1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSimInfoChanged:Z

    .line 3839
    return-void
.end method

.method public setSimInfo()[Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3277
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMultiSimDS()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3278
    iget-object v3, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    aput-boolean v5, v3, v6

    .line 3279
    iget-object v3, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    aput-boolean v5, v3, v5

    .line 3280
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mIconChanged:[Z

    .line 3311
    :goto_0
    return-object v0

    .line 3283
    :cond_0
    new-array v0, v7, [Z

    fill-array-data v0, :array_0

    .line 3284
    .local v0, "iconChanged":[Z
    new-array v1, v7, [Ljava/lang/String;

    aput-object v4, v1, v6

    aput-object v4, v1, v5

    .line 3285
    .local v1, "sim1Info":[Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    aput-object v4, v2, v6

    aput-object v4, v2, v5

    .line 3287
    .local v2, "sim2Info":[Ljava/lang/String;
    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3289
    :cond_1
    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getRegisterInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3291
    aget-object v3, v1, v5

    if-eqz v3, :cond_2

    .line 3292
    aget-object v3, v1, v5

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim1Info:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3293
    aput-boolean v5, v0, v6

    .line 3295
    :cond_2
    sput-object v1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim1Info:[Ljava/lang/String;

    .line 3298
    :cond_3
    const-string v3, "vnd.sec.contact.sim2"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3300
    :cond_4
    const-string v3, "vnd.sec.contact.sim2"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getRegisterInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3302
    aget-object v3, v2, v5

    if-eqz v3, :cond_5

    .line 3303
    aget-object v3, v2, v5

    sget-object v4, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Info:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3304
    aput-boolean v5, v0, v5

    .line 3306
    :cond_5
    sput-object v2, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mSim2Info:[Ljava/lang/String;

    .line 3309
    :cond_6
    sput-boolean v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheckSimIcon:Z

    .line 3310
    sput-boolean v6, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isFirstCheckSimPopupIcon:Z

    goto :goto_0

    .line 3283
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public setSlotSwitchingState(Z)V
    .locals 3
    .param p1, "isSwitched"    # Z

    .prologue
    .line 3847
    const-string v0, "PhoneBookManageSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlotSwitchingState isSwitched :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    sput-boolean p1, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->mCurrentSlotSwitchingState:Z

    .line 3849
    return-void
.end method

.method public trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 1048
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v3, "tmpText":Ljava/lang/StringBuffer;
    const-string v2, ""

    .line 1050
    .local v2, "returnText":Ljava/lang/String;
    const-string v0, ""

    .line 1051
    .local v0, "chkText":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 1052
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    if-le p2, v4, :cond_0

    .line 1053
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1054
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1055
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    if-gt v4, p2, :cond_0

    .line 1056
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1051
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1060
    :cond_1
    return-object v2
.end method

.method public trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 1034
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1035
    .local v2, "tmpText":Ljava/lang/StringBuffer;
    const-string v1, ""

    .line 1037
    .local v1, "returnText":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 1038
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    if-le p2, v3, :cond_0

    .line 1039
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1040
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1037
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1043
    :cond_1
    return-object v1
.end method
