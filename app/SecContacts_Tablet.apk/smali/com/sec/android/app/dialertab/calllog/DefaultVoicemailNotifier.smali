.class public Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifier.java"

# interfaces
.implements Lcom/sec/android/app/dialertab/calllog/VoicemailNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$1;,
        Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;,
        Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NameLookupQuery;,
        Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;,
        Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCallsQuery;,
        Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "DefaultVoicemailNotifier"

.field public static final TAG:Ljava/lang/String; = "DefaultVoicemailNotifier"

.field private static sInstance:Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNameLookupQuery:Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NameLookupQuery;

.field private final mNewCallsQuery:Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCallsQuery;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCallsQuery;Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NameLookupQuery;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationManager"    # Landroid/app/NotificationManager;
    .param p3, "newCallsQuery"    # Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCallsQuery;
    .param p4, "nameLookupQuery"    # Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NameLookupQuery;
    .param p5, "phoneNumberHelper"    # Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 84
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->mNewCallsQuery:Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCallsQuery;

    .line 85
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->mNameLookupQuery:Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NameLookupQuery;

    .line 86
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 87
    return-void
.end method

.method private createMarkNewVoicemailsAsOldIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 208
    const-string v1, "DefaultVoicemailNotifier"

    const-string v2, "updateNotification, createMarkNewVoicemailsAsOldIntent"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/dialertab/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.dialertab.calllog.ACTION_MARK_NEW_VOICEMAILS_AS_OLD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static createNameLookupQuery(Landroid/content/ContentResolver;)Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NameLookupQuery;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 335
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;-><init>(Landroid/content/ContentResolver;Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$1;)V

    return-object v0
.end method

.method public static createNewCallsQuery(Landroid/content/ContentResolver;)Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCallsQuery;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 247
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;-><init>(Landroid/content/ContentResolver;Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$1;)V

    return-object v0
.end method

.method public static createPhoneNumberHelper(Landroid/content/Context;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 376
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 378
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    return-object v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const-class v7, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;

    if-nez v0, :cond_0

    .line 68
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 70
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 71
    .local v6, "contentResolver":Landroid/content/ContentResolver;
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;

    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->createNewCallsQuery(Landroid/content/ContentResolver;)Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCallsQuery;

    move-result-object v3

    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->createNameLookupQuery(Landroid/content/ContentResolver;)Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NameLookupQuery;

    move-result-object v4

    invoke-static {p0}, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->createPhoneNumberHelper(Landroid/content/Context;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCallsQuery;Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NameLookupQuery;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;

    .line 76
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    :cond_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method


# virtual methods
.method public clearNotification()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "DefaultVoicemailNotifier"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 217
    return-void
.end method

.method public updateNotification(Landroid/net/Uri;)V
    .locals 25
    .param p1, "newCallUri"    # Landroid/net/Uri;

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->mNewCallsQuery:Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCallsQuery;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCallsQuery;->query()[Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;

    move-result-object v15

    .line 96
    .local v15, "newCalls":[Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;
    if-eqz v15, :cond_0

    array-length v0, v15

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 97
    :cond_0
    const-string v20, "DefaultVoicemailNotifier"

    const-string v21, "No voicemails to notify about: clear the notification."

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->clearNotification()V

    .line 204
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string v20, "DefaultVoicemailNotifier"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateNotification, newCalls : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", newCalls.length : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v15

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 105
    .local v18, "resources":Landroid/content/res/Resources;
    const/4 v7, 0x0

    .line 109
    .local v7, "callers":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v13

    .line 112
    .local v13, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 115
    .local v6, "callToNotify":Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;
    move-object v4, v15

    .local v4, "arr$":[Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v11, :cond_6

    aget-object v14, v4, v9

    .line 117
    .local v14, "newCall":Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;
    iget-object v0, v14, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 118
    .local v12, "name":Ljava/lang/String;
    if-nez v12, :cond_3

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->mNameLookupQuery:Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NameLookupQuery;

    move-object/from16 v20, v0

    iget-object v0, v14, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NameLookupQuery;->query(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 122
    if-nez v12, :cond_2

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v20, v0

    iget-object v0, v14, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 124
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 125
    iget-object v12, v14, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    .line 128
    :cond_2
    iget-object v0, v14, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v13, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 131
    move-object v7, v12

    .line 137
    :cond_3
    :goto_2
    const-string v20, "DefaultVoicemailNotifier"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "newCall.voicemailUri: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v14, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-eqz p1, :cond_4

    iget-object v0, v14, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 140
    move-object v6, v14

    .line 115
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 133
    :cond_5
    const v20, 0x7f0e01e0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v7, v21, v22

    const/16 v22, 0x1

    aput-object v12, v21, v22

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 144
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "newCall":Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;
    :cond_6
    if-eqz p1, :cond_7

    if-nez v6, :cond_7

    .line 145
    const-string v20, "DefaultVoicemailNotifier"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "The new call could not be found in the call log: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_7
    const v20, 0x7f100008

    array-length v0, v15

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    array-length v0, v15

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 152
    .local v19, "title":Ljava/lang/String;
    const v10, 0x108007e

    .line 154
    .local v10, "icon":I
    new-instance v20, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v21, 0x108007e

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->createMarkNewVoicemailsAsOldIntent()Landroid/app/PendingIntent;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v17

    .line 165
    .local v17, "notificationBuilder":Landroid/app/Notification$Builder;
    array-length v0, v15

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 167
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-class v21, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v8, "contentIntent":Landroid/content/Intent;
    const-string v20, "EXTRA_VOICEMAIL_URI"

    const/16 v21, 0x0

    aget-object v21, v15, v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    const-string v20, "DefaultVoicemailNotifier"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateNotification, newCalls[0].callsId : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v22, v15, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->callsId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", newCalls[0].voicemailUri : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v22, v15, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v20, "EXTRA_CALL_LOG_IDS"

    const/16 v21, 0x0

    aget-object v21, v15, v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->callsId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v20, "EXTRA_CALL_LOG_CONTACT"

    const/16 v21, 0x0

    aget-object v21, v15, v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v20, "EXTRA_VVM_ID"

    const/16 v21, 0x0

    aget-object v21, v15, v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->vvmId:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    const-string v20, "DefaultVoicemailNotifier"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateNotification, get Extra ID : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "EXTRA_CALL_LOG_IDS"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", name : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "EXTRA_CALL_LOG_CONTACT"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", uri : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "EXTRA_VOICEMAIL_URI"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", vvmId : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v22, v15, v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->vvmId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x8000000

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 182
    const-string v20, "DefaultVoicemailNotifier"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateNotification, contentIntent : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-eqz v6, :cond_8

    .line 187
    const v20, 0x7f0e01e1

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v6, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 191
    :cond_8
    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v16

    .line 192
    .local v16, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "audio"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 194
    .local v5, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 195
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 201
    :cond_9
    :goto_4
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v20, v0

    const-string v21, "DefaultVoicemailNotifier"

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 179
    .end local v5    # "audioManager":Landroid/media/AudioManager;
    .end local v8    # "contentIntent":Landroid/content/Intent;
    .end local v16    # "notification":Landroid/app/Notification;
    :cond_a
    new-instance v8, Landroid/content/Intent;

    const-string v20, "com.android.phone.action.RECENT_CALLS"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v8    # "contentIntent":Landroid/content/Intent;
    goto/16 :goto_3

    .line 197
    .restart local v5    # "audioManager":Landroid/media/AudioManager;
    .restart local v16    # "notification":Landroid/app/Notification;
    :cond_b
    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v20

    if-eqz v20, :cond_9

    .line 198
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/app/Notification;->defaults:I

    goto :goto_4
.end method
