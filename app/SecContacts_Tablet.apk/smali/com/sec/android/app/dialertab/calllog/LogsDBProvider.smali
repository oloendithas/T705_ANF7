.class public Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;
.super Ljava/lang/Object;
.source "LogsDBProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$VideoCall;,
        Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;,
        Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$AllCallDelete;,
        Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$Frequent;,
        Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$Sms;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final AUTHORITY:Ljava/lang/String; = "call"

.field public static final AUTOREJECTED_TYPE:I = 0x6

.field public static final BUSINESS_NAME:Ljava/lang/String; = "bname"

.field public static final CACHED_CITY_ID:Ljava/lang/String; = "cityid"

.field public static final CACHED_FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final CACHED_LOOKUP_URI:Ljava/lang/String; = "lookup_uri"

.field public static final CACHED_MATCHED_NUMBER:Ljava/lang/String; = "matched_number"

.field public static final CACHED_NAME:Ljava/lang/String; = "name"

.field public static final CACHED_NAME_REVERSED:Ljava/lang/String; = "name_reversed"

.field public static final CACHED_NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final CACHED_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final CALLLOG_ID:Ljava/lang/String; = "cid"

.field public static final CALL_OUT_DURATION:Ljava/lang/String; = "call_out_duration"

.field public static final CDNIP_NUMBER:Ljava/lang/String; = "cdnip_number"

.field public static final CMF_CALL_TYPE:I = 0x16

.field public static final CNAP_NAME:Ljava/lang/String; = "cnap_name"

.field public static final CONTACT_ID:Ljava/lang/String; = "contactid"

.field public static final CONTENT_GROUPCOUNT_URI:Landroid/net/Uri;

.field public static final CONTENT_GROUP_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_SIM1:Landroid/net/Uri;

.field public static final CONTENT_URI_SIM2:Landroid/net/Uri;

.field public static final CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field public static final COUNTRY_ISO:Ljava/lang/String; = "countryiso"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DATE_SORT_ORDER:Ljava/lang/String; = "date DESC, _id DESC"

.field public static final DB_MAX_COUNT:I = 0x1f4

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final DURATION_SIM2:Ljava/lang/String; = "duration"

.field public static final E164_NUMBER:Ljava/lang/String; = "e164_number"

.field public static final EMERGENCY_ALERT:I = 0x19

.field public static final FIND_LOST_PHONE_TO_OWNER_TYPE:I = 0x29

.field public static final FIND_LOST_PHONE_TYPE:I = 0x28

.field public static final FIRST_NAME:Ljava/lang/String; = "fname"

.field public static final FREQUENT:Ljava/lang/String; = "frequent"

.field public static final GEOCODED_LOCATION:Ljava/lang/String; = "geocoded_location"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final ID_SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field public static final INCOMING_ROAMING_GLOBAL_TYPE:I = 0xd

.field public static final INCOMING_ROAMING_MISSED_TYPE:I = 0xe

.field public static final INCOMING_ROAMING_REJECT_TYPE:I = 0xf

.field public static final INCOMING_TYPE:I = 0x1

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final LAST_NAME:Ljava/lang/String; = "lname"

.field public static final LOG_TYPE:Ljava/lang/String; = "logtype"

.field public static final LOG_TYPE_CALL:I = 0x64

.field public static final LOG_TYPE_CHATON_CALL:I = 0x78

.field public static final LOG_TYPE_CHATON_VIDEO:I = 0x1fe

.field public static final LOG_TYPE_CONTENTS_SHARED:I = 0x44c

.field public static final LOG_TYPE_MMS:I = 0xc8

.field public static final LOG_TYPE_SMS:I = 0x12c

.field public static final LOG_TYPE_VIDEO:I = 0x1f4

.field public static final LOG_TYPE_VOICEMAIL:I = 0x384

.field public static final LOG_TYPE_VOIP:I = 0x320

.field public static final LOG_TYPE_VOLTE:I = 0x3e8

.field public static final LOG_TYPE_VVM:I = 0x3b6

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final MESSAGE_CALL_TYPE:I = 0x15

.field public static final MESSAGE_CONTENT:Ljava/lang/String; = "m_content"

.field public static final MESSAGE_ID:Ljava/lang/String; = "messageid"

.field public static final MISSED_TYPE:I = 0x3

.field public static final NEW:Ljava/lang/String; = "new"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final OUTGOING_ROAMING_GLOBAL_TYPE:I = 0xb

.field public static final OUTGOING_ROAMING_LOCAL_TYPE:I = 0xc

.field public static final OUTGOING_THREEWAY_CALL_TYPE:I = 0x32

.field public static final OUTGOING_TYPE:I = 0x2

.field public static final PINYIN_NAME:Ljava/lang/String; = "pinyin_name"

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final READ_MSG:I = 0x1

.field public static final REAL_PHONE_NUMBER:Ljava/lang/String; = "real_phone_number"

.field public static final REJECTED_TYPE:I = 0x5

.field public static final REJECT_FLAG:Ljava/lang/String; = "reject_flag"

.field public static final REMIND_ME_LATER_SET:Ljava/lang/String; = "remind_me_later_set"

.field public static final ROAMMING_SMS_TYPE:I = 0x14

.field public static final SDN_ALPHA_ID:Ljava/lang/String; = "sdn_alpha_id"

.field public static final SEC_CUSTOM1:Ljava/lang/String; = "sec_custom1"

.field public static final SEC_CUSTOM2:Ljava/lang/String; = "sec_custom2"

.field public static final SEC_CUSTOM3:Ljava/lang/String; = "sec_custom3"

.field public static final SERVICE_TYPE:Ljava/lang/String; = "service_type"

.field public static final SIMNUM:Ljava/lang/String; = "simnum"

.field public static final SIM_CARD_ID:Ljava/lang/String; = "sim_id"

.field public static final SIM_NUM1:I = 0x1

.field public static final SIM_NUM2:I = 0x2

.field public static final SWITCHED_CALL_DISCONNECT_SERVICE_TYPE:I = 0x1e

.field public static final SWITCHED_CALL_SERVICE_TYPE:I = 0x1f

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UNREAD_MSG:I = 0x0

.field public static final VOICEMAIL_TYPE:I = 0x4

.field public static final VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"

.field public static final VVM_ID:Ljava/lang/String; = "vvm_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const-string v0, "content://logs/call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 29
    const-string v0, "content://logs/call/search_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_GROUP_URI:Landroid/net/Uri;

    .line 31
    const-string v0, "content://logs/call/group"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_GROUPCOUNT_URI:Landroid/net/Uri;

    .line 33
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "allow_voicemails"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 38
    const-string v0, "content://logs/call_sim1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI_SIM1:Landroid/net/Uri;

    .line 39
    const-string v0, "content://logs/call_sim2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI_SIM2:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    return-void
.end method
