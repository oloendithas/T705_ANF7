.class public Lcom/sec/android/app/dialertab/calllog/MissedCallCover;
.super Ljava/lang/Object;
.source "MissedCallCover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;,
        Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;
    }
.end annotation


# static fields
.field static final ADDRESS_COLUMN_INDEX:I = 0x12

.field static final BUSINESS_NAME_COLUMN_INDEX:I = 0xb

.field static final CACHED_CITY_ID_COLUMN_INDEX:I = 0x8

.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field static final CALL_OUT_DURATION_INDEX:I = 0x10

.field static final CALL_TYPE_COLUMN_INDEX:I = 0x4

.field static final CDNIP_NUMBER_COLUMN_INDEX:I = 0xe

.field static final CNAP_NAME_COLUMN_INDEX:I = 0xc

.field static final COLUMN_INDEX_ID:I = 0x0

.field static final COLUMN_INDEX_LABEL:I = 0x3

.field static final COLUMN_INDEX_LOOKUP_KEY:I = 0x7

.field static final COLUMN_INDEX_NAME:I = 0x1

.field static final COLUMN_INDEX_NORMALIZED_NUMBER:I = 0x5

.field static final COLUMN_INDEX_NUMBER:I = 0x4

.field static final COLUMN_INDEX_PHOTO_URI:I = 0x6

.field static final COLUMN_INDEX_TYPE:I = 0x2

.field static final CONTACT_ID_INDEX:I = 0x11

.field static final COUNTRY_ISO_COLUMN_INDEX:I = 0x5

.field static final DATE_COLUMN_INDEX:I = 0x1

.field static final DURATION_COLUMN_INDEX:I = 0x2

.field static final FIRST_NAME_COLUMN_INDEX:I = 0x9

.field static final GEOCODED_LOCATION_COLUMN_INDEX:I = 0x6

.field static final ID_COLUMN_INDEX:I = 0x0

.field static final LAST_NAME_COLUMN_INDEX:I = 0xa

.field static final LOGTYPE_COLUMN_INDEX:I = 0x7

.field public static final LOG_PROJECTION:[Ljava/lang/String;

.field static final NUMBER_COLUMN_INDEX:I = 0x3

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field static final REMIND_ME_LATER_TIME:I = 0x16

.field static final SERVICE_TYPE_COLUMN_INDEX:I = 0xf

.field static final SHAREDFILE_COLUMN_INDEX:I = 0x13

.field static final SIMNUM_COLUMN_INDEX:I = 0xd

.field static final SIM_CARD_ID_COLUMN_INDEX:I = 0x15

.field private static final SVIEW_COVER_DIM_TIMEOUT_DEFAULT:I = 0x0

.field private static final SVIEW_COVER_DISPLAY_TIMEOUT_DEFAULT:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "MissedCallCover"

.field static final VOICEMAIL_MSGID_COLUMN_INDEX:I = 0x14

.field public static bVIP_BLog_Detail:Z


# instance fields
.field bName:Ljava/lang/String;

.field city_id:Ljava/lang/String;

.field fName:Ljava/lang/String;

.field lName:Ljava/lang/String;

.field private mBackgroundColor:I

.field mCdnipNumber:Ljava/lang/String;

.field private mCnapName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCoverPopupShowing:Z

.field private mDefaultCountryIso:Ljava/lang/String;

.field mDialog:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field mServiceType:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mUris:Ljava/lang/String;

.field private strCityInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->bVIP_BLog_Detail:Z

    .line 106
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "duration"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cityid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fname"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lname"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "bname"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cnap_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "simnum"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cdnip_number"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "service_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "call_out_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "m_content"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "messageid"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "remind_me_later_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 133
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "cityid"

    aput-object v1, v0, v5

    const-string v1, "cnap_name"

    aput-object v1, v0, v6

    const-string v1, "fname"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lname"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->LOG_PROJECTION:[Ljava/lang/String;

    .line 176
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;Ljava/lang/String;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "phoneNumberHelper"    # Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .param p3, "uris"    # Ljava/lang/String;
    .param p4, "mCallDetails"    # [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mCdnipNumber:Ljava/lang/String;

    .line 94
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mCoverPopupShowing:Z

    .line 97
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mCnapName:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->strCityInfo:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->fName:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->lName:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->bName:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->city_id:Ljava/lang/String;

    .line 201
    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mBackgroundColor:I

    .line 204
    if-nez p4, :cond_0

    .line 205
    const-string v0, "MissedCallCover"

    const-string v1, "uris is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mUris:Ljava/lang/String;

    .line 211
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 212
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;-><init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;Landroid/content/Context;Ljava/lang/String;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mDialog:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

    .line 213
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 214
    return-void

    .line 208
    :cond_0
    const-string v0, "MissedCallCover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallDetails1 number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p4, v3

    iget-object v2, v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uris : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/MissedCallCover;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/MissedCallCover;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->updateStatusBar(Z)V

    return-void
.end method

.method private getMissedGroupCount()I
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 314
    const/4 v6, 0x0

    .line 315
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v10, "where":Ljava/lang/StringBuilder;
    const-string v0, "new"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v0, " = 1 "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v0, "type"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v0, " = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 326
    .local v9, "values":Landroid/content/ContentValues;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 327
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_GROUP_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 329
    const/4 v8, 0x0

    .line 330
    .local v8, "mGroupCount":I
    if-eqz v6, :cond_0

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 332
    const-string v0, "MissedCallCover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMissedGroupCount mGroupCount : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v8    # "mGroupCount":I
    :cond_0
    :goto_0
    return v8

    .line 338
    :catch_0
    move-exception v7

    .line 339
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "MissedCallCover"

    const-string v1, "getMissedGroupCount exception"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    if-eqz v6, :cond_1

    .line 341
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v8, v11

    .line 343
    goto :goto_0
.end method

.method private removeMissedCallNotifications()V
    .locals 6

    .prologue
    .line 348
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 350
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 351
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    .line 362
    :goto_0
    const-string v3, "dcm_support_machichara_service"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.nttdocomo.android.mascot"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 366
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.nttdocomo.android.mascot.DisablePopup.AbsentArriving"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.nttdocomo.android.mascot"

    const-string v4, "com.nttdocomo.android.mascot.service.MascotIntentService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 382
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_1
    return-void

    .line 353
    .restart local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :try_start_2
    const-string v3, "MissedCallCover"

    const-string v4, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 377
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MissedCallCover"

    const-string v4, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 372
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v0

    .line 373
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v3, "MissedCallCover"

    const-string v4, "com.nttdocomo.android.mascot is not found"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 379
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_2
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private updateStatusBar(Z)V
    .locals 4
    .param p1, "mDisable"    # Z

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 305
    .local v0, "state":I
    if-eqz p1, :cond_0

    .line 306
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 309
    :cond_0
    const-string v1, "MissedCallCover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStatusBar: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 311
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 272
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 273
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v2, "suppressCoverUI"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    const-string v2, "sender"

    const-string v3, "MissedCallCover"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->updateStatusBar(Z)V

    .line 281
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mDialog:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mDialog:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 289
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mCoverPopupShowing:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    :cond_0
    :goto_1
    const-string v2, "MissedCallCover"

    const-string v3, "clearcover popop is dismissed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public displayDialog(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 217
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_1

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 219
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 220
    const-string v6, "MissedCallCover"

    const-string v7, "activity is null or already closed."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mDialog:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

    if-eqz v6, :cond_0

    .line 226
    invoke-direct {p0, v9}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->updateStatusBar(Z)V

    .line 228
    const/high16 v3, 0x4080000

    .line 229
    .local v3, "mFlag":I
    const/high16 v5, 0x400000

    .line 230
    .local v5, "secure_flags":I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "automatic_unlock"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 231
    .local v1, "isAutoUnlock":I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 232
    .local v4, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    .line 234
    .local v2, "isSecureLock":Z
    const-string v6, "MissedCallCover"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSecureLock : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isAutoUnlock : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-nez v2, :cond_2

    if-ne v1, v9, :cond_2

    .line 237
    or-int/2addr v3, v5

    .line 240
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mDialog:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v8, 0x100000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 241
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mDialog:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const-wide/16 v7, 0x1770

    iput-wide v7, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 242
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mDialog:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 243
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mDialog:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v10, v10}, Landroid/view/Window;->setLayout(II)V

    .line 244
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mDialog:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Window;->addFlags(I)V

    .line 245
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mDialog:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 246
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mDialog:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mDialog:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 250
    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mCoverPopupShowing:Z

    goto/16 :goto_0
.end method

.method public getBackgroundColor()I
    .locals 12

    .prologue
    const/16 v11, 0x77

    const/16 v10, 0x6b

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, "color":I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_use_all"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 668
    .local v3, "mColorUseAll":I
    const-string v4, "MissedCallCover"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBackgroundColor :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mBackgroundColor:I

    .line 672
    if-ne v3, v8, :cond_0

    .line 673
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_random"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 674
    .local v2, "mColorRandom":I
    const-string v4, "MissedCallCover"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mColorRandom :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const v1, -0xd1e5f3

    .line 678
    .local v1, "defColor":I
    packed-switch v2, :pswitch_data_0

    .line 694
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mBackgroundColor:I

    .line 699
    .end local v1    # "defColor":I
    .end local v2    # "mColorRandom":I
    :cond_0
    :goto_0
    const/16 v4, 0xef

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mBackgroundColor:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mBackgroundColor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mBackgroundColor:I

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 701
    return v0

    .line 680
    .restart local v1    # "defColor":I
    .restart local v2    # "mColorRandom":I
    :pswitch_0
    const-string v4, "changed_sview_cover_color"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 681
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "s_vew_cover_background_color"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mBackgroundColor:I

    goto :goto_0

    .line 683
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "s_vew_cover_background_color"

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mBackgroundColor:I

    goto :goto_0

    .line 687
    :pswitch_1
    const-string v4, "changed_sview_cover_color"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 688
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_display_random"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mBackgroundColor:I

    goto :goto_0

    .line 690
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_display_random"

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mBackgroundColor:I

    goto :goto_0

    .line 678
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mDialog:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mCoverPopupShowing:Z

    return v0
.end method
