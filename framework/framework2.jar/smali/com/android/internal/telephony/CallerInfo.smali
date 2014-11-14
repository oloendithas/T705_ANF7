.class public Lcom/android/internal/telephony/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# static fields
.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field static final SHIP_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "CallerInfo"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field private static final VDBG:Z


# instance fields
.field public cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public cachedPhotoIcon:Landroid/graphics/Bitmap;

.field public callcardNumber:Ljava/lang/String;

.field public cdnipNumber:Ljava/lang/String;

.field public cnapName:Ljava/lang/String;

.field public contactExists:Z

.field public contactRefUri:Landroid/net/Uri;

.field public contactRingtoneUri:Landroid/net/Uri;

.field public contactsNumber:Ljava/lang/String;

.field public geoDescription:Ljava/lang/String;

.field public isBirthday:Z

.field public isCachedPhotoCurrent:Z

.field private mIsEmergency:Z

.field private mIsVoiceMail:Z

.field public mMapUserData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public needUpdate:Z

.field public normalizedNumber:Ljava/lang/String;

.field public numberLabel:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:I

.field public outgoingNumber:Ljava/lang/String;

.field public person_id:J

.field public personaUserId:I

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoResource:I

.field public remainedDaysUntilBirthday:J

.field public shouldSendToVoicemail:Z

.field public sktVEUrl:Ljava/lang/String;

.field public snsAccountType:I

.field public snsStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 80
    const-string v0, "CallerInfo"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    .line 81
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CallerInfo;->SHIP_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 206
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 207
    return-void
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "previousResult"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 440
    iget-boolean v1, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v1, :cond_22

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 442
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 444
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object p2

    .line 449
    .end local v0    # "username":Ljava/lang/String;
    :cond_22
    return-object p2
.end method

.method public static getCallerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 470
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    const/4 v0, 0x0

    .line 472
    .local v0, "callerID":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 473
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 475
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 476
    move-object v0, v2

    .line 482
    .end local v2    # "name":Ljava/lang/String;
    :cond_10
    :goto_10
    return-object v0

    .line 478
    .restart local v2    # "name":Ljava/lang/String;
    :cond_11
    move-object v0, p1

    goto :goto_10
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v10, -0x1

    .line 218
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 219
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    iput v6, v1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 220
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 221
    iput v6, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 222
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 223
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 224
    iput-boolean v6, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 225
    iput-boolean v6, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 229
    iput v6, v1, Lcom/android/internal/telephony/CallerInfo;->personaUserId:I

    .line 230
    const/4 v2, 0x0

    .line 234
    .local v2, "isLocalContactFound":Z
    sget-boolean v4, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v4, :cond_25

    const-string v4, "CallerInfo"

    const-string v7, "getCallerInfo() based on cursor..."

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_25
    if-eqz p2, :cond_e4

    .line 237
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_db

    .line 246
    const/4 v2, 0x1

    .line 251
    const-string v4, "display_name"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 252
    .local v0, "columnIndex":I
    if-eq v0, v10, :cond_3c

    .line 253
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 257
    :cond_3c
    const-string/jumbo v4, "number"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 258
    if-eq v0, v10, :cond_4b

    .line 259
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 263
    :cond_4b
    const-string/jumbo v4, "normalized_number"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 264
    if-eq v0, v10, :cond_5a

    .line 265
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 269
    :cond_5a
    const-string v4, "label"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 270
    if-eq v0, v10, :cond_85

    .line 271
    const-string/jumbo v4, "type"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 272
    .local v3, "typeColumnIndex":I
    if-eq v3, v10, :cond_85

    .line 273
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 274
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 275
    iget v4, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v7, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v4, v7}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 282
    .end local v3    # "typeColumnIndex":I
    :cond_85
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v0

    .line 283
    if-eq v0, v10, :cond_f6

    .line 284
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 285
    sget-boolean v4, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v4, :cond_af

    const-string v4, "CallerInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==> got info.person_id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_af
    :goto_af
    const-string v4, "custom_ringtone"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 297
    if-eq v0, v10, :cond_10f

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10f

    .line 298
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 305
    :goto_c7
    const-string/jumbo v4, "send_to_voicemail"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 306
    if-eq v0, v10, :cond_112

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_112

    move v4, v5

    :goto_d7
    iput-boolean v4, v1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 308
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 312
    .end local v0    # "columnIndex":I
    :cond_db
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_e4

    .line 313
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 321
    :cond_e4
    if-nez v2, :cond_e9

    .line 322
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfo;->getRemoteCallerInfo(Landroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfo;)V

    .line 327
    :cond_e9
    iput-boolean v6, v1, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 328
    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 329
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 331
    return-object v1

    .line 288
    .restart local v0    # "columnIndex":I
    :cond_f6
    const-string v4, "CallerInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find person_id column for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 300
    :cond_10f
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_c7

    :cond_112
    move v4, v6

    .line 306
    goto :goto_d7
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simSlot"    # I

    .prologue
    .line 366
    sget-boolean v2, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v2, :cond_b

    const-string v2, "CallerInfo"

    const-string v3, "getCallerInfo() based on number..."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 369
    const/4 v1, 0x0

    .line 425
    :cond_12
    :goto_12
    return-object v1

    .line 383
    :cond_13
    invoke-static {p1, p0, p2}, Landroid/telephony/MultiSimPhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 385
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 386
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2, p0, p1}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    goto :goto_12

    .line 390
    :cond_32
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    goto :goto_12

    .line 396
    :cond_3c
    invoke-static {p1, p2}, Landroid/telephony/MultiSimPhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 398
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 399
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail(Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    goto :goto_12

    .line 405
    :cond_5b
    invoke-static {}, Lcom/android/internal/telephony/CallerInfo;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_6b

    .line 406
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    goto :goto_12

    .line 414
    :cond_6b
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 416
    .local v0, "contactUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 417
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 421
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 422
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_12
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .registers 8
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 636
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_22

    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_22
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 643
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 644
    .local v1, "columnName":Ljava/lang/String;
    const-string v3, "content://com.android.contacts/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 647
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_3a

    const-string v3, "CallerInfo"

    const-string v4, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_3a
    const-string v1, "contact_id"

    .line 664
    :goto_3c
    if-eqz v1, :cond_ba

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 665
    .local v0, "columnIndex":I
    :goto_42
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_6e

    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> Using column \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' (columnIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for person_id lookup..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_6e
    return v0

    .line 649
    .end local v0    # "columnIndex":I
    :cond_6f
    const-string v3, "content://com.android.contacts/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 652
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_82

    const-string v3, "CallerInfo"

    const-string v4, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_82
    const-string v1, "contact_id"

    goto :goto_3c

    .line 655
    :cond_85
    const-string v3, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 659
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_98

    const-string v3, "CallerInfo"

    const-string v4, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_98
    const-string v1, "_id"

    goto :goto_3c

    .line 662
    :cond_9b
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected prefix for contactRef \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 664
    :cond_ba
    const/4 v0, -0x1

    goto :goto_42
.end method

.method protected static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 757
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 737
    const/4 v1, 0x0

    .line 738
    .local v1, "countryIso":Ljava/lang/String;
    const-string v3, "country_detector"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 740
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_15

    .line 741
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 742
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_34

    .line 743
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 748
    .end local v0    # "country":Landroid/location/Country;
    :cond_15
    :goto_15
    if-nez v1, :cond_33

    .line 749
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 750
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_33
    return-object v1

    .line 745
    .restart local v0    # "country":Landroid/location/Country;
    :cond_34
    const-string v3, "CallerInfo"

    const-string v4, "CountryDetector.detectCountry() returned null."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private static getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 692
    sget-boolean v7, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v7, :cond_23

    const-string v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getGeoDescription(\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\')..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 728
    :cond_29
    :goto_29
    return-object v1

    .line 698
    :cond_2a
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v6

    .line 699
    .local v6, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v3

    .line 701
    .local v3, "geocoder":Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v4, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 702
    .local v4, "locale":Ljava/util/Locale;
    invoke-static {p0, v4}, Lcom/android/internal/telephony/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "countryIso":Ljava/lang/String;
    const/4 v5, 0x0

    .line 705
    .local v5, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_41
    sget-boolean v7, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v7, :cond_6e

    const-string v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parsing \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' for countryIso \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_6e
    invoke-virtual {v6, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    .line 708
    sget-boolean v7, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v7, :cond_8e

    const-string v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- parsed number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_41 .. :try_end_8e} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_8e} :catch_e4

    .line 723
    :cond_8e
    :goto_8e
    if-eqz v5, :cond_29

    .line 724
    invoke-virtual {v3, v5, v4}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "description":Ljava/lang/String;
    sget-boolean v7, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v7, :cond_29

    const-string v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- got description: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 709
    .end local v1    # "description":Ljava/lang/String;
    :catch_b8
    move-exception v2

    .line 711
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    sget-boolean v7, Lcom/android/internal/telephony/CallerInfo;->SHIP_BUILD:Z

    if-nez v7, :cond_dc

    .line 712
    const-string v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getGeoDescription: NumberParseException for incoming number \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 714
    :cond_dc
    const-string v7, "CallerInfo"

    const-string v8, "getGeoDescription: NumberParseException for incoming number"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 718
    .end local v2    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :catch_e4
    move-exception v2

    .line 719
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception Caught"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e
.end method

.method private static getRemoteCallerInfo(Landroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "info"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v9, -0x1

    .line 866
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v5

    .line 867
    .local v5, "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v8, "version"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    const-string v7, "false"

    const-string v8, "isSupportCallerInfo"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 949
    :cond_23
    :goto_23
    return-void

    .line 871
    :cond_24
    :try_start_24
    const-string/jumbo v7, "persona"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 872
    .local v3, "pm":Landroid/os/PersonaManager;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/os/PersonaManager;->getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v1

    .line 874
    .local v1, "cursor":Landroid/content/CustomCursor;
    if-eqz v1, :cond_23

    .line 875
    invoke-virtual {v1}, Landroid/database/AbstractCursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 877
    invoke-virtual {v1}, Landroid/content/CustomCursor;->getCursorOwnerId()I

    move-result v7

    iput v7, p2, Lcom/android/internal/telephony/CallerInfo;->personaUserId:I

    .line 885
    const-string v7, "display_name"

    invoke-virtual {v1, v7}, Landroid/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 886
    .local v0, "columnIndex":I
    if-eq v0, v9, :cond_51

    .line 887
    invoke-virtual {v1, v0}, Landroid/database/AbstractWindowedCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 891
    :cond_51
    const-string/jumbo v7, "number"

    invoke-virtual {v1, v7}, Landroid/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 892
    if-eq v0, v9, :cond_60

    .line 893
    invoke-virtual {v1, v0}, Landroid/database/AbstractWindowedCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 897
    :cond_60
    const-string/jumbo v7, "normalized_number"

    invoke-virtual {v1, v7}, Landroid/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 898
    if-eq v0, v9, :cond_6f

    .line 899
    invoke-virtual {v1, v0}, Landroid/database/AbstractWindowedCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 903
    :cond_6f
    const-string v7, "label"

    invoke-virtual {v1, v7}, Landroid/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 904
    if-eq v0, v9, :cond_9a

    .line 905
    const-string/jumbo v7, "type"

    invoke-virtual {v1, v7}, Landroid/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 906
    .local v4, "typeColumnIndex":I
    if-eq v4, v9, :cond_9a

    .line 907
    invoke-virtual {v1, v4}, Landroid/database/AbstractWindowedCursor;->getInt(I)I

    move-result v7

    iput v7, p2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 908
    invoke-virtual {v1, v0}, Landroid/database/AbstractWindowedCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 909
    iget v7, p2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v8, p2, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v7, v8}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 930
    .end local v4    # "typeColumnIndex":I
    :cond_9a
    const-string v7, "custom_ringtone"

    invoke-virtual {v1, v7}, Landroid/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 931
    if-eq v0, v9, :cond_ea

    invoke-virtual {v1, v0}, Landroid/database/AbstractWindowedCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_ea

    .line 932
    invoke-virtual {v1, v0}, Landroid/database/AbstractWindowedCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 939
    :goto_b2
    const-string/jumbo v7, "send_to_voicemail"

    invoke-virtual {v1, v7}, Landroid/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 940
    if-eq v0, v9, :cond_ee

    invoke-virtual {v1, v0}, Landroid/database/AbstractWindowedCursor;->getInt(I)I

    move-result v7

    if-ne v7, v6, :cond_ee

    :goto_c1
    iput-boolean v6, p2, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 942
    const/4 v6, 0x1

    iput-boolean v6, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 944
    .end local v0    # "columnIndex":I
    :cond_c6
    invoke-virtual {v1}, Landroid/database/AbstractCursor;->close()V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_c9} :catch_cb

    goto/16 :goto_23

    .line 946
    .end local v1    # "cursor":Landroid/content/CustomCursor;
    .end local v3    # "pm":Landroid/os/PersonaManager;
    :catch_cb
    move-exception v2

    .line 947
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "CallerInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RCP from getRemoteCallerInfo(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 934
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "columnIndex":I
    .restart local v1    # "cursor":Landroid/content/CustomCursor;
    .restart local v3    # "pm":Landroid/os/PersonaManager;
    :cond_ea
    const/4 v7, 0x0

    :try_start_eb
    iput-object v7, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ed} :catch_cb

    goto :goto_b2

    .line 940
    :cond_ee
    const/4 v6, 0x0

    goto :goto_c1
.end method

.method public static isVideoCall()Z
    .registers 3

    .prologue
    .line 954
    const/4 v0, 0x0

    .line 956
    .local v0, "isVideoCall":Z
    :try_start_1
    const-string/jumbo v2, "phoneext"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 957
    .local v1, "phone":Lcom/android/internal/telephony/ITelephonyExt;
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->isVideoCall()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move-result v0

    .line 960
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephonyExt;
    :goto_10
    return v0

    .line 958
    :catch_11
    move-exception v2

    goto :goto_10
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 586
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 589
    .end local p0    # "s":Ljava/lang/String;
    :cond_8
    :goto_8
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_9
    const/4 p0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 831
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    .line 832
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 843
    const/4 v0, 0x0

    .line 844
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public isEmergencyNumber()Z
    .registers 2

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public isVoiceMailNumber()Z
    .registers 2

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    return v0
.end method

.method markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v3, 0x1040575

    .line 514
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 519
    const-string v0, "CallerInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "markAsEmergency : phoneNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 523
    const v0, 0x1080659

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 528
    return-object p0
.end method

.method markAsEmergency(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 533
    iput-object p2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 534
    const v0, 0x1040575

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 535
    const v0, 0x1080659

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 537
    return-object p0
.end method

.method markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;
    .registers 5

    .prologue
    .line 551
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 554
    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "voiceMailLabel":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_d} :catch_e

    .line 568
    .end local v1    # "voiceMailLabel":Ljava/lang/String;
    :goto_d
    return-object p0

    .line 557
    :catch_e
    move-exception v0

    .line 563
    .local v0, "se":Ljava/lang/SecurityException;
    const-string v2, "CallerInfo"

    const-string v3, "Cannot access VoiceMail."

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method markAsVoiceMail(Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .registers 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 572
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 574
    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, "voiceMailLabel":Ljava/lang/String;
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 577
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_f} :catch_10

    .line 581
    .end local v1    # "voiceMailLabel":Ljava/lang/String;
    :goto_f
    return-object p0

    .line 578
    :catch_10
    move-exception v0

    .line 579
    .local v0, "se":Ljava/lang/SecurityException;
    const-string v2, "CallerInfo"

    const-string v3, "Cannot access VoiceMail."

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public removeUserData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 855
    const/4 v0, 0x0

    .line 856
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 766
    const/4 v0, 0x0

    .line 804
    .local v0, "VERBOSE_DEBUG":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_6b

    const-string/jumbo v1, "null"

    :goto_36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", phoneNumber "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v1, :cond_6f

    const-string/jumbo v1, "null"

    :goto_54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_6b
    const-string/jumbo v1, "non-null"

    goto :goto_36

    :cond_6f
    const-string/jumbo v1, "non-null"

    goto :goto_54
.end method

.method public updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackNumber"    # Ljava/lang/String;

    .prologue
    .line 683
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v0, p2

    .line 684
    .local v0, "number":Ljava/lang/String;
    :goto_9
    invoke-static {p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 685
    return-void

    .line 683
    .end local v0    # "number":Ljava/lang/String;
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_9
.end method
