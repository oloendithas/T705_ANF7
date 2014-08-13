.class public final Lcom/sec/android/app/dialertab/calllog/CallLogQuery;
.super Ljava/lang/Object;
.source "CallLogQuery.java"


# static fields
.field public static final BUSINESS_NAME:I = 0x12

.field public static final CACHED_CITY_ID:I = 0x13

.field public static final CACHED_FORMATTED_NUMBER:I = 0x1e

.field public static final CACHED_LOOKUP_URI:I = 0xb

.field public static final CACHED_MATCHED_NUMBER:I = 0xc

.field public static final CACHED_NAME:I = 0x8

.field public static final CACHED_NORMALIZED_NUMBER:I = 0xd

.field public static final CACHED_NUMBER_LABEL:I = 0xa

.field public static final CACHED_NUMBER_TYPE:I = 0x9

.field public static final CACHED_PHOTO_ID:I = 0xe

.field public static final CALL_OUT_DURATION:I = 0x18

.field public static final CALL_TYPE:I = 0x4

.field public static final CDNIP_NUMBER:I = 0x16

.field public static final CNAP_NAME:I = 0x14

.field public static final CONTACT_ID:I = 0x1d

.field public static final COUNTRY_ISO:I = 0x5

.field public static final DATE:I = 0x2

.field public static final DURATION:I = 0x3

.field public static final DURATION_SIM2:I = 0x1b

.field public static final E164_NUMBER:I = 0x1a

.field public static final EXTENDED_PROJECTION:[Ljava/lang/String;

.field public static final FIRST_NAME:I = 0x10

.field public static final GEOCODED_LOCATION:I = 0x7

.field public static final ID:I = 0x0

.field public static final IS_READ:I = 0x21

.field public static final LAST_NAME:I = 0x11

.field public static final LOG_TYPE:I = 0xf

.field public static final MESSAGE_ID:I = 0x19

.field public static final NUMBER:I = 0x1

.field public static final REAL_PHONE_NUMBER:I = 0x23

.field public static final REMIND_ME_LATER_SET:I = 0x1f

.field public static final SDN_ALPHA_ID:I = 0x22

.field public static final SECTION:I = 0x24

.field public static final SECTION_NAME:Ljava/lang/String; = "section"

.field public static final SECTION_NEW_HEADER:I = 0x0

.field public static final SECTION_NEW_ITEM:I = 0x1

.field public static final SECTION_OLD_HEADER:I = 0x2

.field public static final SECTION_OLD_ITEM:I = 0x3

.field public static final SERVICE_TYPE:I = 0x17

.field public static final SIMNUM:I = 0x15

.field public static final SIM_CARD_ID:I = 0x1c

.field public static final VOICEMAIL_URI:I = 0x6

.field public static final VVM_ID:I = 0x20

.field public static final _PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "voicemail_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lookup_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "matched_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "fname"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "lname"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bname"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "cityid"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "cnap_name"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "simnum"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "cdnip_number"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "service_type"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "call_out_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "messageid"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "e164_number"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "formatted_number"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "remind_me_later_set"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "vvm_id"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "is_read"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "sdn_alpha_id"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "real_phone_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    .line 152
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->EXTENDED_PROJECTION:[Ljava/lang/String;

    .line 153
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->EXTENDED_PROJECTION:[Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->EXTENDED_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    const-string v2, "section"

    aput-object v2, v0, v1

    .line 155
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNewSection(Landroid/database/Cursor;)Z
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    .line 164
    const/16 v2, 0x24

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 165
    .local v0, "section":I
    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSectionHeader(Landroid/database/Cursor;)Z
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 158
    const/16 v1, 0x24

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 159
    .local v0, "section":I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
