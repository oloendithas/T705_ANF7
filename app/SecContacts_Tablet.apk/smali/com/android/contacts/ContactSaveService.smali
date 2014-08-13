.class public Lcom/android/contacts/ContactSaveService;
.super Landroid/app/IntentService;
.source "ContactSaveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactSaveService$JoinContactQuery;,
        Lcom/android/contacts/ContactSaveService$Listener;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGE_ORDER:Ljava/lang/String; = "chageOrder"

.field public static final ACTION_CLEAR_DEFAULT_LINE:Ljava/lang/String; = "clearDefaultLine"

.field public static final ACTION_CLEAR_PRIMARY:Ljava/lang/String; = "clearPrimary"

.field public static final ACTION_CREATE_GROUP:Ljava/lang/String; = "createGroup"

.field public static final ACTION_DELETE_CONTACT:Ljava/lang/String; = "delete"

.field public static final ACTION_DELETE_GROUP:Ljava/lang/String; = "deleteGroup"

.field public static final ACTION_DELETE_ITEM:Ljava/lang/String; = "deleteItem"

.field public static final ACTION_DELETE_MULTIPLE_GROUP:Ljava/lang/String; = "deleteMultipleGroup"

.field public static final ACTION_DELETE_SINGLE_GROUP:Ljava/lang/String; = "deleteSingleGroup"

.field public static final ACTION_JOIN_CONTACTS:Ljava/lang/String; = "joinContacts"

.field public static final ACTION_NEW_RAW_CONTACT:Ljava/lang/String; = "newRawContact"

.field public static final ACTION_RENAME_GROUP:Ljava/lang/String; = "renameGroup"

.field public static final ACTION_RESET_DEFAULT_LINE:Ljava/lang/String; = "resetDefaultLine"

.field public static final ACTION_SAVE_CONTACT:Ljava/lang/String; = "saveContact"

.field public static final ACTION_SET_ALERTTONE:Ljava/lang/String; = "setAlerttone"

.field public static final ACTION_SET_DEFAULT_LINE:Ljava/lang/String; = "setDefaultLine"

.field public static final ACTION_SET_MEDIA_RINGTONE:Ljava/lang/String; = "setMediaRingtone"

.field public static final ACTION_SET_PRIVATE:Ljava/lang/String; = "setPrivate"

.field public static final ACTION_SET_RINGTONE:Ljava/lang/String; = "setRingtone"

.field public static final ACTION_SET_SEND_TO_VOICEMAIL:Ljava/lang/String; = "sendToVoicemail"

.field public static final ACTION_SET_STARRED:Ljava/lang/String; = "setStarred"

.field public static final ACTION_SET_SUPER_PRIMARY:Ljava/lang/String; = "setSuperPrimary"

.field public static final ACTION_SET_VIBRATION:Ljava/lang/String; = "setVibration"

.field public static final ACTION_SPLIT_CONTACTS:Ljava/lang/String; = "splitContacts"

.field public static final ACTION_UPDATE_GROUP:Ljava/lang/String; = "updateGroup"

.field public static final ACTION_UPDATE_MEMBER_ONLY:Ljava/lang/String; = "updateMemberOnly"

.field private static final ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final EXTRA_ACCOUNTS_DATASET:Ljava/lang/String; = "accountWithDateSet"

.field public static final EXTRA_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field public static final EXTRA_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field public static final EXTRA_ALERTTONE_URI:Ljava/lang/String; = "alerttoneUri"

.field public static final EXTRA_CALLBACK_INTENT:Ljava/lang/String; = "callbackIntent"

.field public static final EXTRA_CONTACT_ID1:Ljava/lang/String; = "contactId1"

.field public static final EXTRA_CONTACT_ID2:Ljava/lang/String; = "contactId2"

.field public static final EXTRA_CONTACT_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field public static final EXTRA_CONTACT_WRITABLE:Ljava/lang/String; = "contactWritable"

.field public static final EXTRA_CONTENT_VALUES:Ljava/lang/String; = "contentValues"

.field public static final EXTRA_CUSTOM_ALERTTONE:Ljava/lang/String; = "customAlerttone"

.field public static final EXTRA_CUSTOM_RINGTONE:Ljava/lang/String; = "customRingtone"

.field public static final EXTRA_CUSTOM_VIBRATION:Ljava/lang/String; = "customVibration"

.field public static final EXTRA_DATA_ID:Ljava/lang/String; = "dataId"

.field public static final EXTRA_DATA_SET:Ljava/lang/String; = "dataSet"

.field public static final EXTRA_DELETE_ID:Ljava/lang/String; = "deleteItemId"

.field public static final EXTRA_DELETE_MEMBER:Ljava/lang/String; = "deleteMember"

.field public static final EXTRA_EDIT_MODE:Ljava/lang/String; = "EditMemberMode"

.field public static final EXTRA_GROUP_ID:Ljava/lang/String; = "groupId"

.field public static final EXTRA_GROUP_INFO:Ljava/lang/String; = "groupInfo"

.field public static final EXTRA_GROUP_LABEL:Ljava/lang/String; = "groupLabel"

.field public static final EXTRA_IS_CHANGED_NAMECARD:Ljava/lang/String; = "isChangedNamecard"

.field public static final EXTRA_LINE_PHONENUMBER:Ljava/lang/String; = "setDefaultLinePhoneNumber"

.field public static final EXTRA_MEMBERS_TO_UPDATE:Ljava/lang/String; = "membersToUpdate"

.field public static final EXTRA_PRIVATE_FLAG:Ljava/lang/String; = "is_private"

.field public static final EXTRA_RAW_CONTACTS_TO_ADD:Ljava/lang/String; = "rawContactsToAdd"

.field public static final EXTRA_RAW_CONTACTS_TO_REMOVE:Ljava/lang/String; = "rawContactsToRemove"

.field public static final EXTRA_RINGTONE_URI:Ljava/lang/String; = "ringtoneUri"

.field public static final EXTRA_SAVE_IS_PROFILE:Ljava/lang/String; = "saveIsProfile"

.field public static final EXTRA_SAVE_MODE:Ljava/lang/String; = "saveMode"

.field public static final EXTRA_SAVE_SUCCEEDED:Ljava/lang/String; = "saveSucceeded"

.field public static final EXTRA_SEND_TO_VOICEMAIL_FLAG:Ljava/lang/String; = "sendToVoicemailFlag"

.field public static final EXTRA_SIM_ID:Ljava/lang/String; = "simcard_sim_id"

.field public static final EXTRA_STARRED_FLAG:Ljava/lang/String; = "starred"

.field public static final EXTRA_UPDATED_NAMECARD:Ljava/lang/String; = "updatedNamecard"

.field public static final EXTRA_UPDATED_PHOTOS:Ljava/lang/String; = "updatedPhotos"

.field public static final EXTRA_VIBRATION_URI:Ljava/lang/String; = "vibrationUri"

.field private static final PERSIST_TRIES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ContactSaveService"

.field private static final sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/contacts/ContactSaveService$Listener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 185
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data15"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactSaveService;->ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;

    .line 211
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 217
    const-string v0, "ContactSaveService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    .line 219
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    .line 220
    return-void
.end method

.method public static ResetDefaultLineIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataId"    # J

    .prologue
    .line 2477
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2478
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "resetDefaultLine"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2479
    const-string v1, "dataId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2481
    return-object v0
.end method

.method private addMembersToAgg(Landroid/content/ContentResolver;[JLjava/lang/String;)V
    .locals 14
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "contactsToAdd"    # [J
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 1277
    if-nez p2, :cond_1

    .line 1320
    :cond_0
    return-void

    .line 1281
    :cond_1
    move-object/from16 v0, p2

    array-length v10, v0

    .line 1282
    .local v10, "size":I
    const-wide/16 v1, -0x1

    .line 1283
    .local v1, "contactId":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 1284
    const/16 v11, 0x64

    sub-int v12, v10, v7

    if-ge v11, v12, :cond_2

    const/16 v4, 0x64

    .line 1286
    .local v4, "count":I
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1287
    .local v3, "contactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v11, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v12, "group_membership"

    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1288
    .local v5, "dataUri":Landroid/net/Uri;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v4, :cond_3

    .line 1289
    add-int v11, v7, v9

    aget-wide v1, p2, v11

    .line 1291
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 1294
    .local v8, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    const-string v11, "account_name"

    const-string v12, "vnd.sec.contact.agg.account_name"

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1295
    const-string v11, "account_type"

    const-string v12, "vnd.sec.contact.agg.account_type"

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1296
    const-string v11, "title"

    move-object/from16 v0, p3

    invoke-virtual {v8, v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1298
    const-string v11, "data1"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1299
    const-string v11, "contact_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1300
    const-string v11, "mimetype"

    const-string v12, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1301
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1284
    .end local v3    # "contactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v4    # "count":I
    .end local v5    # "dataUri":Landroid/net/Uri;
    .end local v8    # "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    .end local v9    # "j":I
    :cond_2
    sub-int v4, v10, v7

    goto :goto_1

    .line 1306
    .restart local v3    # "contactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v4    # "count":I
    .restart local v5    # "dataUri":Landroid/net/Uri;
    .restart local v9    # "j":I
    :cond_3
    :try_start_0
    const-string v11, "com.android.contacts"

    invoke-virtual {p1, v11, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1283
    :goto_3
    add-int/lit8 v7, v7, 0x64

    goto :goto_0

    .line 1307
    :catch_0
    move-exception v6

    .line 1309
    .local v6, "e":Landroid/os/RemoteException;
    const-string v11, "ContactSaveService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Problem persisting user edits for contact ID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1312
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 1316
    .local v6, "e":Landroid/content/OperationApplicationException;
    const-string v11, "ContactSaveService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Assert failed in adding contact ID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". Already exists in group "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private addMembersToGoogle(Landroid/content/ContentResolver;[JLjava/lang/String;Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 18
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "contactsToAdd"    # [J
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 1331
    if-nez p2, :cond_1

    .line 1376
    :cond_0
    return-void

    .line 1335
    :cond_1
    move-object/from16 v0, p2

    array-length v14, v0

    .line 1336
    .local v14, "size":I
    const-wide/16 v3, -0x1

    .line 1337
    .local v3, "contactId":J
    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v9

    .line 1338
    .local v9, "groupId":J
    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v2

    .line 1339
    .local v2, "accountType":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 1340
    .local v1, "accountName":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v14, :cond_0

    .line 1341
    const/16 v15, 0x64

    sub-int v16, v14, v11

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    const/16 v6, 0x64

    .line 1343
    .local v6, "count":I
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    .local v5, "contactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v16, "group_membership"

    invoke-static/range {v15 .. v16}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1345
    .local v7, "dataUri":Landroid/net/Uri;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    if-ge v13, v6, :cond_3

    .line 1346
    add-int v15, v11, v13

    aget-wide v3, p2, v15

    .line 1348
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 1351
    .local v12, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    const-string v15, "account_name"

    invoke-virtual {v12, v15, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1352
    const-string v15, "account_type"

    invoke-virtual {v12, v15, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1353
    const-string v15, "title"

    move-object/from16 v0, p3

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1354
    const-string v15, "data1"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1355
    const-string v15, "contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1356
    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1357
    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1341
    .end local v5    # "contactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6    # "count":I
    .end local v7    # "dataUri":Landroid/net/Uri;
    .end local v12    # "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    .end local v13    # "j":I
    :cond_2
    sub-int v6, v14, v11

    goto :goto_1

    .line 1362
    .restart local v5    # "contactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v6    # "count":I
    .restart local v7    # "dataUri":Landroid/net/Uri;
    .restart local v13    # "j":I
    :cond_3
    :try_start_0
    const-string v15, "com.android.contacts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1340
    :goto_3
    add-int/lit8 v11, v11, 0x64

    goto :goto_0

    .line 1363
    :catch_0
    move-exception v8

    .line 1365
    .local v8, "e":Landroid/os/RemoteException;
    const-string v15, "ContactSaveService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Problem persisting user edits for contact ID "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1368
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 1372
    .local v8, "e":Landroid/content/OperationApplicationException;
    const-string v15, "ContactSaveService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Assert failed in adding contact ID "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". Already exists in group "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private addMembersToGroup(Landroid/content/ContentResolver;[JJ)V
    .locals 14
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "rawContactsToAdd"    # [J
    .param p3, "groupId"    # J

    .prologue
    .line 1154
    if-nez p2, :cond_1

    .line 1206
    :cond_0
    return-void

    .line 1157
    :cond_1
    move-object/from16 v0, p2

    .local v0, "arr$":[J
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-wide v6, v0, v3

    .line 1159
    .local v6, "rawContactId":J
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    .local v8, "rawContactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1165
    .local v1, "assertBuilder":Landroid/content/ContentProviderOperation$Builder;
    const-string v10, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "vnd.android.cursor.item/group_membership"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1171
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    .line 1172
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 1177
    .local v4, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    const-string v10, "raw_contact_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1178
    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1179
    const-string v10, "data1"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1180
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    const/4 v9, 0x0

    .line 1190
    .local v9, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1191
    const-string v10, "com.android.contacts"

    invoke-virtual {p1, v10, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1157
    .end local v1    # "assertBuilder":Landroid/content/ContentProviderOperation$Builder;
    .end local v4    # "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    .end local v8    # "rawContactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v9    # "results":[Landroid/content/ContentProviderResult;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1193
    :catch_0
    move-exception v2

    .line 1195
    .local v2, "e":Landroid/os/RemoteException;
    const-string v10, "ContactSaveService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Problem persisting user edits for raw contact ID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1198
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1202
    .local v2, "e":Landroid/content/OperationApplicationException;
    const-string v10, "ContactSaveService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Assert failed in adding raw contact ID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Already exists in group "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private buildJoinContactDiff(Ljava/util/ArrayList;JJ)V
    .locals 3
    .param p2, "rawContactId1"    # J
    .param p4, "rawContactId2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 1917
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1919
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1920
    const-string v1, "raw_contact_id1"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1921
    const-string v1, "raw_contact_id2"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1922
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1923
    return-void
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;JJ)V
    .locals 3
    .param p2, "rawContactId1"    # J
    .param p4, "rawContactId2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 2024
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2025
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2026
    const-string v1, "raw_contact_id1"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2027
    const-string v1, "raw_contact_id2"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2028
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2029
    return-void
.end method

.method private changeGroupOrder(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0x64

    .line 2110
    const-string v10, "contentValues"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 2111
    .local v7, "valueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 2112
    .local v6, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_2

    .line 2113
    sub-int v10, v6, v2

    if-ge v9, v10, :cond_0

    move v0, v9

    .line 2115
    .local v0, "count":I
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2116
    .local v4, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v0, :cond_1

    .line 2117
    add-int v10, v2, v3

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 2118
    .local v8, "values":Landroid/content/ContentValues;
    const-string v10, "content://com.android.contacts/groups_order"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2116
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2113
    .end local v0    # "count":I
    .end local v3    # "j":I
    .end local v4    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_0
    sub-int v0, v6, v2

    goto :goto_1

    .line 2123
    .restart local v0    # "count":I
    .restart local v3    # "j":I
    .restart local v4    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2125
    .local v5, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v10, "com.android.contacts"

    invoke-virtual {v5, v10, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2112
    add-int/lit8 v2, v2, 0x64

    goto :goto_0

    .line 2126
    :catch_0
    move-exception v1

    .line 2127
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Failed to change group order"

    invoke-direct {v9, v10, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 2130
    .end local v0    # "count":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "j":I
    .end local v4    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    return-void
.end method

.method private clearDefaultLine(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 2445
    const-string v1, "simcard_sim_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v9, v1

    .line 2446
    .local v9, "simId":J
    const-wide/16 v7, -0x1

    .line 2448
    .local v7, "dataId":J
    const-wide/16 v1, -0x1

    cmp-long v1, v9, v1

    if-nez v1, :cond_1

    .line 2449
    const-string v1, "ContactSaveService"

    const-string v2, "Invalid lineID"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :cond_0
    :goto_0
    return-void

    .line 2453
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2454
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 2456
    .local v11, "values":Landroid/content/ContentValues;
    const-string v1, "data15"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2458
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype= \'vnd.android.cursor.item/phone_v2\' AND data15="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2462
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_3

    .line 2463
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2465
    :cond_2
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2466
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v11, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2468
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2469
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2470
    :cond_3
    if-eqz v6, :cond_0

    .line 2471
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static clearDefaultLineIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .prologue
    .line 2436
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2437
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "clearDefaultLine"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2438
    const-string v1, "simcard_sim_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2440
    return-object v0
.end method

.method private clearPrimary(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1679
    const-string v3, "dataId"

    invoke-virtual {p1, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1680
    .local v0, "dataId":J
    cmp-long v3, v0, v7

    if-nez v3, :cond_0

    .line 1681
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for clearPrimary request"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :goto_0
    return-void

    .line 1686
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1687
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "is_super_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1688
    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1690
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createChangeOrderIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 2102
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2103
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "chageOrder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2104
    const-string v1, "contentValues"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2106
    return-object v0
.end method

.method public static createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataId"    # J

    .prologue
    .line 1672
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1673
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "clearPrimary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1674
    const-string v1, "dataId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1675
    return-object v0
.end method

.method public static createDeleteContactIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "callbackAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1699
    .local p2, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1700
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "delete"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1701
    const-string v2, "contactUri"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1702
    if-eqz p2, :cond_0

    .line 1703
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1704
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1705
    const-string v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1707
    .end local v0    # "callbackIntent":Landroid/content/Intent;
    :cond_0
    return-object v1
.end method

.method public static createDeleteItemIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 1729
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1730
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "deleteItem"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1731
    const-string v1, "deleteItemId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1732
    return-object v0
.end method

.method private createGroup(Landroid/content/Intent;)V
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 938
    const-string v17, "accountWithDateSet"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 940
    .local v3, "accountWithDataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    const-string v17, "groupLabel"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 941
    .local v8, "label":Ljava/lang/String;
    const-string v17, "customRingtone"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 942
    .local v14, "ringTone":Ljava/lang/String;
    const-string v17, "customAlerttone"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 943
    .local v9, "messageAlert":Ljava/lang/String;
    const-string v17, "customVibration"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 944
    .local v16, "vibration":Ljava/lang/String;
    const-string v17, "rawContactsToAdd"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v11

    .line 946
    .local v11, "rawContactsToAdd":[J
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 947
    .local v12, "resolver":Landroid/content/ContentResolver;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 948
    .local v10, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v13, 0x0

    .line 950
    .local v13, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountWithDataSet;

    .line 951
    .local v2, "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 952
    .local v15, "values":Landroid/content/ContentValues;
    const-string v17, "account_type"

    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const-string v17, "account_name"

    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string v17, "data_set"

    iget-object v0, v2, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    if-nez v14, :cond_0

    .line 957
    const-string v17, "custom_ringtone"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 961
    :goto_1
    if-nez v9, :cond_1

    .line 962
    const-string v17, "sec_custom_alert"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 966
    :goto_2
    if-nez v16, :cond_2

    .line 967
    const-string v17, "sec_custom_vibration"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 972
    :goto_3
    sget-object v17, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 974
    .local v4, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v4, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 975
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 959
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_0
    const-string v17, "custom_ringtone"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 964
    :cond_1
    const-string v17, "sec_custom_alert"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 969
    :cond_2
    const-string v17, "sec_custom_vibration"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 979
    .end local v2    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v15    # "values":Landroid/content/ContentValues;
    :cond_3
    :try_start_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_4

    .line 980
    const-string v17, "com.android.contacts"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 991
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11, v8}, Lcom/android/contacts/ContactSaveService;->addMembersToAgg(Landroid/content/ContentResolver;[JLjava/lang/String;)V

    .line 993
    const-string v17, "callbackIntent"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 994
    .local v5, "callbackIntent":Landroid/content/Intent;
    if-eqz v13, :cond_5

    .line 995
    const/16 v17, 0x0

    aget-object v17, v13, v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 999
    :goto_5
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 1001
    return-void

    .line 982
    .end local v5    # "callbackIntent":Landroid/content/Intent;
    :catch_0
    move-exception v6

    .line 983
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 984
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 985
    .local v6, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 997
    .end local v6    # "e":Landroid/content/OperationApplicationException;
    .restart local v5    # "callbackIntent":Landroid/content/Intent;
    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_5
.end method

.method public static createGroupDeletionIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "groupId"    # J

    .prologue
    .line 1044
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1045
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "deleteGroup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    const-string v1, "groupId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1047
    return-object v0
.end method

.method public static createGroupMultipleDeleteIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "callbackAction"    # Ljava/lang/String;
    .param p4, "deleteMember"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 2137
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2138
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "deleteMultipleGroup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2139
    const-string v2, "contentValues"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2140
    const-string v2, "deleteMember"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2145
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2146
    const-string v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2148
    return-object v1
.end method

.method public static createGroupRenameIntent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "groupId"    # J
    .param p3, "newLabel"    # Ljava/lang/String;
    .param p5, "callbackAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1008
    .local p4, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1009
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "renameGroup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    const-string v2, "groupId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1011
    const-string v2, "groupLabel"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1014
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1015
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1016
    const-string v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1018
    return-object v1
.end method

.method public static createGroupSingleDeleteIntent(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "groupId"    # Ljava/lang/Long;
    .param p3, "callbackAction"    # Ljava/lang/String;
    .param p4, "deleteMember"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Long;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 2225
    .local p2, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2226
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "deleteSingleGroup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2227
    const-string v2, "groupId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2228
    const-string v2, "deleteMember"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2233
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2234
    const-string v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2236
    return-object v1
.end method

.method public static createGroupUpdateIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[JLjava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "newLabel"    # Ljava/lang/String;
    .param p3, "ringTone"    # Ljava/lang/String;
    .param p4, "messageAlert"    # Ljava/lang/String;
    .param p5, "vibration"    # Ljava/lang/String;
    .param p6, "contactsToAdd"    # [J
    .param p7, "contactsToRemove"    # [J
    .param p9, "callbackAction"    # Ljava/lang/String;
    .param p10, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/group/GroupInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[J[J",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1080
    .local p1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/group/GroupInfo;>;"
    .local p8, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1081
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "updateGroup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1082
    const-string v2, "groupInfo"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1083
    const-string v2, "groupLabel"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1084
    const-string v2, "customRingtone"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    const-string v2, "customAlerttone"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    const-string v2, "customVibration"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1087
    const-string v2, "rawContactsToAdd"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1088
    const-string v2, "rawContactsToRemove"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1089
    const-string v2, "EditMemberMode"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1093
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1094
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, p9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1095
    const-string v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1097
    return-object v1
.end method

.method public static createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId1"    # J
    .param p3, "contactId2"    # J
    .param p5, "contactWritable"    # Z
    .param p7, "callbackAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJZ",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1755
    .local p6, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1756
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "joinContacts"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1757
    const-string v2, "contactId1"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1758
    const-string v2, "contactId2"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1759
    const-string v2, "contactWritable"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1762
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1763
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, p7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1764
    const-string v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1766
    return-object v1
.end method

.method public static createMemberUpdateOnlyIntent(Landroid/content/Context;Lcom/sec/android/app/contacts/group/GroupInfo;[JLjava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;
    .param p2, "membersToUpdate"    # [J
    .param p4, "callbackAction"    # Ljava/lang/String;
    .param p5, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/contacts/group/GroupInfo;",
            "[J",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 2043
    .local p3, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2044
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "updateMemberOnly"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2045
    const-string v2, "groupInfo"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2046
    const-string v2, "membersToUpdate"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 2047
    const-string v2, "EditMemberMode"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2051
    if-eqz p3, :cond_0

    .line 2052
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2053
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2054
    const-string v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2056
    .end local v0    # "callbackIntent":Landroid/content/Intent;
    :cond_0
    return-object v1
.end method

.method public static createNewGroupIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "ringTone"    # Ljava/lang/String;
    .param p4, "messageAlert"    # Ljava/lang/String;
    .param p5, "vibration"    # Ljava/lang/String;
    .param p6, "rawContactsToAdd"    # [J
    .param p8, "callbackAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[J",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 915
    .local p1, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .local p7, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 916
    new-instance v2, Lcom/android/contacts/model/AccountWithDataSet;

    const-string v3, "vnd.sec.contact.phone"

    const-string v4, "vnd.sec.contact.phone"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 920
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "createGroup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 921
    const-string v2, "accountWithDateSet"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 922
    const-string v2, "groupLabel"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    const-string v2, "customRingtone"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 924
    const-string v2, "customAlerttone"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    const-string v2, "customVibration"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    const-string v2, "rawContactsToAdd"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 930
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 931
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, p8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    const-string v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 934
    return-object v1
.end method

.method public static createNewRawContactIntent(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/contacts/model/AccountWithDataSet;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p4, "callbackAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p3, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "newRawContact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    if-eqz p2, :cond_0

    .line 351
    const-string v2, "accountName"

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v2, "accountType"

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v2, "dataSet"

    iget-object v3, p2, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    :cond_0
    const-string v2, "contentValues"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 361
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 362
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 366
    .end local v0    # "callbackIntent":Landroid/content/Intent;
    :cond_1
    return-object v1
.end method

.method private createRawContact(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 370
    const-string v14, "accountName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "accountName":Ljava/lang/String;
    const-string v14, "accountType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "accountType":Ljava/lang/String;
    const-string v14, "dataSet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "dataSet":Ljava/lang/String;
    const-string v14, "contentValues"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 374
    .local v12, "valueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v14, "callbackIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 376
    .local v3, "callbackIntent":Landroid/content/Intent;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v7, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v14, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "account_name"

    invoke-virtual {v14, v15, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "data_set"

    invoke-virtual {v14, v15, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 384
    .local v11, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_0

    .line 385
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    .line 386
    .local v13, "values":Landroid/content/ContentValues;
    invoke-virtual {v13}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v14

    sget-object v15, Lcom/android/contacts/ContactSaveService;->ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;

    invoke-interface {v14, v15}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 387
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "raw_contact_id"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 393
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 396
    .local v9, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v14, "com.android.contacts"

    invoke-virtual {v9, v14, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 401
    .local v10, "results":[Landroid/content/ContentProviderResult;
    if-eqz v3, :cond_1

    .line 402
    const/4 v14, 0x0

    aget-object v14, v10, v14

    iget-object v8, v14, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 403
    .local v8, "rawContactUri":Landroid/net/Uri;
    invoke-static {v9, v8}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 405
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 407
    .end local v8    # "rawContactUri":Landroid/net/Uri;
    :cond_1
    return-void

    .line 397
    .end local v10    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v5

    .line 398
    .local v5, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Failed to store new contact"

    invoke-direct {v14, v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
.end method

.method public static createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/EntityDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Lcom/android/contacts/model/EntityDeltaList;
    .param p2, "saveModeExtraKey"    # Ljava/lang/String;
    .param p3, "saveMode"    # I
    .param p4, "isProfile"    # Z
    .param p6, "callbackAction"    # Ljava/lang/String;
    .param p7, "rawContactId"    # J
    .param p9, "updatedPhotoPath"    # Ljava/lang/String;
    .param p10, "ringtone"    # Ljava/lang/String;
    .param p11, "vibration"    # Ljava/lang/String;
    .param p12, "alerttone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/model/EntityDeltaList;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 421
    .local p5, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 422
    .local v8, "bundle":Landroid/os/Bundle;
    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    .line 423
    invoke-static/range {v1 .. v11}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/EntityDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/EntityDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Lcom/android/contacts/model/EntityDeltaList;
    .param p2, "saveModeExtraKey"    # Ljava/lang/String;
    .param p3, "saveMode"    # I
    .param p4, "isProfile"    # Z
    .param p6, "callbackAction"    # Ljava/lang/String;
    .param p7, "updatedPhotos"    # Landroid/os/Bundle;
    .param p8, "ringtone"    # Ljava/lang/String;
    .param p9, "vibration"    # Ljava/lang/String;
    .param p10, "alerttone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/model/EntityDeltaList;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 438
    .local p5, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 440
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "saveContact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 442
    const-string v2, "saveIsProfile"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    const-string v2, "ringtoneUri"

    invoke-virtual {v1, v2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const-string v2, "alerttoneUri"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const-string v2, "vibrationUri"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    if-eqz p7, :cond_0

    .line 447
    const-string v2, "updatedPhotos"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 450
    :cond_0
    if-eqz p5, :cond_1

    .line 454
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 455
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    invoke-virtual {v0, p6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const-string v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 459
    .end local v0    # "callbackIntent":Landroid/content/Intent;
    :cond_1
    return-object v1
.end method

.method public static createSetAlerttone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1582
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1583
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "setAlerttone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1584
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1585
    const-string v1, "customAlerttone"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1586
    return-object v0
.end method

.method public static createSetDefaultLineIntent(Landroid/content/Context;JILjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataId"    # J
    .param p3, "simId"    # I
    .param p4, "numberData"    # Ljava/lang/String;

    .prologue
    .line 2354
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2355
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "setDefaultLine"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2356
    const-string v1, "dataId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2357
    const-string v1, "simcard_sim_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2358
    const-string v1, "setDefaultLinePhoneNumber"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2360
    return-object v0
.end method

.method public static createSetMediaRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaUri"    # Landroid/net/Uri;

    .prologue
    .line 1570
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1571
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "setMediaRingtone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1572
    const-string v1, "customRingtone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1573
    const-string v1, "is_ringtone"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1574
    return-object v0
.end method

.method public static createSetPrivateIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "value"    # Z

    .prologue
    .line 2530
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2531
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "setPrivate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2532
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2533
    const-string v1, "is_private"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2535
    return-object v0
.end method

.method public static createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1562
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1563
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "setRingtone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1564
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1565
    const-string v1, "customRingtone"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1566
    return-object v0
.end method

.method public static createSetSendToVoicemail(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "value"    # Z

    .prologue
    .line 1536
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1537
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "sendToVoicemail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1538
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1539
    const-string v1, "sendToVoicemailFlag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1541
    return-object v0
.end method

.method public static createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "value"    # Z

    .prologue
    .line 1510
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1511
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "setStarred"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1512
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1513
    const-string v1, "starred"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1515
    return-object v0
.end method

.method public static createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataId"    # J

    .prologue
    .line 1644
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1645
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "setSuperPrimary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1646
    const-string v1, "dataId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1647
    return-object v0
.end method

.method public static createSplitContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId1"    # J
    .param p3, "contactId2"    # J
    .param p5, "contactWritable"    # Z
    .param p7, "callbackAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJZ",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1931
    .local p6, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1932
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "splitContacts"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1933
    const-string v2, "contactId1"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1934
    const-string v2, "contactId2"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1935
    const-string v2, "contactWritable"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1938
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1939
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, p7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1940
    const-string v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1942
    return-object v1
.end method

.method private deleteContact(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1711
    const-string v2, "contactUri"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1712
    .local v1, "contactUri":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 1713
    const-string v2, "ContactSaveService"

    const-string v3, "Invalid arguments for deleteContact request"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :cond_0
    :goto_0
    return-void

    .line 1716
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1718
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1719
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>CONTACT_DELETED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " </GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :cond_2
    const-string v2, "callbackIntent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1722
    .local v0, "callbackIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1723
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private deleteGroup(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 1051
    const-string v2, "groupId"

    invoke-virtual {p1, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1052
    .local v0, "groupId":J
    cmp-long v2, v0, v5

    if-nez v2, :cond_0

    .line 1053
    const-string v2, "ContactSaveService"

    const-string v3, "Invalid arguments for deleteGroup request"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :goto_0
    return-void

    .line 1057
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteItem(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, -0x1

    .line 1736
    const-string v3, "deleteItemId"

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1737
    .local v1, "id":J
    cmp-long v3, v1, v4

    if-nez v3, :cond_0

    .line 1738
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for delete request"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :goto_0
    return-void

    .line 1742
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1744
    :catch_0
    move-exception v0

    .line 1745
    .local v0, "e":Ljava/lang/Exception;
    const v3, 0x7f0e007f

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private deleteMultipleGroups(Landroid/content/Intent;)V
    .locals 21
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2152
    const-string v1, "deleteMember"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 2153
    .local v9, "deleteMember":Z
    const-string v1, "contentValues"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 2154
    .local v20, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 2155
    .local v16, "membersToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v15, 0x0

    .line 2156
    .local v15, "memberCursor":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 2159
    .local v17, "resolver":Landroid/content/ContentResolver;
    if-eqz v9, :cond_7

    .line 2161
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2162
    .local v19, "value":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2163
    .local v10, "groupTitle":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2168
    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2169
    const/4 v1, -0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2170
    :cond_1
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2171
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 2172
    .local v13, "id":Ljava/lang/Long;
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2173
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2179
    .end local v13    # "id":Ljava/lang/Long;
    :cond_2
    if-eqz v15, :cond_0

    .line 2180
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2185
    .end local v10    # "groupTitle":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_3
    if-eqz v16, :cond_7

    .line 2187
    const/4 v8, 0x0

    .line 2188
    .local v8, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_7

    .line 2189
    const/16 v1, 0x64

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v11

    if-ge v1, v2, :cond_4

    const/16 v8, 0x64

    .line 2191
    :goto_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 2192
    .local v18, "sb":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    if-ge v14, v8, :cond_6

    .line 2193
    if-nez v14, :cond_5

    .line 2194
    const-string v1, " ( "

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2198
    :goto_5
    add-int v1, v11, v14

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2192
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 2189
    .end local v14    # "j":I
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    sub-int v8, v1, v11

    goto :goto_3

    .line 2196
    .restart local v14    # "j":I
    .restart local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    const-string v1, " , "

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2200
    :cond_6
    const-string v1, " ) "

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2188
    add-int/lit8 v11, v11, 0x64

    goto :goto_2

    .line 2209
    .end local v8    # "count":I
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "j":I
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2210
    .restart local v19    # "value":Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "title=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v19, v3, v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6

    .line 2216
    .end local v19    # "value":Ljava/lang/String;
    :cond_8
    const-string v1, "callbackIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 2217
    .local v7, "callbackIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 2218
    return-void
.end method

.method private deleteSingleGroups(Landroid/content/Intent;)V
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2240
    const-string v1, "deleteMember"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 2241
    .local v9, "deleteMember":Z
    const-string v1, "groupId"

    const-wide/16 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 2242
    .local v10, "groupId":J
    const-wide/16 v1, -0x1

    cmp-long v1, v10, v1

    if-nez v1, :cond_0

    .line 2243
    const-string v1, "ContactSaveService"

    const-string v2, "Invalid arguments for deleteGroup request"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    :goto_0
    return-void

    .line 2246
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 2247
    .local v16, "membersToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v15, 0x0

    .line 2248
    .local v15, "memberCursor":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 2251
    .local v17, "resolver":Landroid/content/ContentResolver;
    if-eqz v9, :cond_7

    .line 2253
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2258
    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2259
    const/4 v1, -0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2260
    :cond_1
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2261
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 2262
    .local v13, "id":Ljava/lang/Long;
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2263
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2268
    .end local v13    # "id":Ljava/lang/Long;
    :cond_2
    if-eqz v15, :cond_3

    .line 2269
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2272
    :cond_3
    if-eqz v16, :cond_7

    .line 2273
    const/4 v8, 0x0

    .line 2274
    .local v8, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_7

    .line 2275
    const/16 v1, 0x64

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    if-ge v1, v2, :cond_4

    const/16 v8, 0x64

    .line 2277
    :goto_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 2278
    .local v18, "sb":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    if-ge v14, v8, :cond_6

    .line 2279
    if-nez v14, :cond_5

    .line 2280
    const-string v1, " ( "

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2284
    :goto_5
    add-int v1, v12, v14

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2278
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 2275
    .end local v14    # "j":I
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    sub-int v8, v1, v12

    goto :goto_3

    .line 2282
    .restart local v14    # "j":I
    .restart local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    const-string v1, " , "

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2286
    :cond_6
    const-string v1, " ) "

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2288
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2274
    add-int/lit8 v12, v12, 0x64

    goto :goto_2

    .line 2295
    .end local v8    # "count":I
    .end local v12    # "i":I
    .end local v14    # "j":I
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2299
    const-string v1, "callbackIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 2300
    .local v7, "callbackIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private deliverCallback(Landroid/content/Intent;)V
    .locals 2
    .param p1, "callbackIntent"    # Landroid/content/Intent;

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/ContactSaveService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactSaveService$2;-><init>(Lcom/android/contacts/ContactSaveService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2324
    return-void
.end method

.method private editGroupInfo(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/content/ContentProviderResult;
    .locals 12
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "ringTone"    # Ljava/lang/String;
    .param p5, "messageAlert"    # Ljava/lang/String;
    .param p6, "vibration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/group/GroupInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    .line 1220
    .local p2, "groupInfoArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/group/GroupInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1221
    .local v6, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x0

    .line 1222
    .local v7, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 1223
    .local v3, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    sget-object v9, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1225
    .local v4, "groupUri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1227
    .local v1, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1229
    .local v8, "values":Landroid/content/ContentValues;
    if-eqz p3, :cond_0

    .line 1230
    const-string v9, "title"

    invoke-virtual {v8, v9, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    :cond_0
    if-nez p4, :cond_1

    .line 1234
    const-string v9, "custom_ringtone"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1240
    :goto_1
    if-nez p5, :cond_2

    .line 1241
    const-string v9, "sec_custom_alert"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1247
    :goto_2
    if-nez p6, :cond_3

    .line 1248
    const-string v9, "sec_custom_vibration"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1253
    :goto_3
    invoke-virtual {v1, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1254
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1236
    :cond_1
    const-string v9, "custom_ringtone"

    move-object/from16 v0, p4

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1243
    :cond_2
    const-string v9, "sec_custom_alert"

    move-object/from16 v0, p5

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1250
    :cond_3
    const-string v9, "sec_custom_vibration"

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1258
    .end local v1    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v3    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v4    # "groupUri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_0
    const-string v9, "com.android.contacts"

    invoke-virtual {p1, v9, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 1265
    :goto_4
    return-object v7

    .line 1259
    :catch_0
    move-exception v2

    .line 1260
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 1261
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1262
    .local v2, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method private getInsertedRawContactId(Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J
    .locals 7
    .param p2, "results"    # [Landroid/content/ContentProviderResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            ")J"
        }
    .end annotation

    .prologue
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v3, -0x1

    .line 883
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 884
    .local v0, "diffSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 885
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 886
    .local v2, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 890
    if-eqz p2, :cond_0

    array-length v5, p2

    if-le v5, v1, :cond_0

    aget-object v5, p2, v1

    iget-object v5, v5, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 891
    aget-object v3, p2, v1

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 896
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    :cond_0
    return-wide v3

    .line 884
    .restart local v2    # "operation":Landroid/content/ContentProviderOperation;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getRawContactId(Lcom/android/contacts/model/EntityDeltaList;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J
    .locals 4
    .param p1, "state"    # Lcom/android/contacts/model/EntityDeltaList;
    .param p3, "results"    # [Landroid/content/ContentProviderResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDeltaList;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            ")J"
        }
    .end annotation

    .prologue
    .line 869
    .local p2, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDeltaList;->findRawContactId()J

    move-result-wide v0

    .line 870
    .local v0, "existingRawContactId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 874
    .end local v0    # "existingRawContactId":J
    :goto_0
    return-wide v0

    .restart local v0    # "existingRawContactId":J
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/ContactSaveService;->getInsertedRawContactId(Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private joinContacts(Landroid/content/Intent;)V
    .locals 35
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1787
    const-string v3, "contactId1"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 1788
    .local v14, "contactId1":J
    const-string v3, "contactId2"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1789
    .local v16, "contactId2":J
    const-string v3, "contactWritable"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    .line 1790
    .local v32, "writable":Z
    const-wide/16 v5, -0x1

    cmp-long v3, v14, v5

    if-eqz v3, :cond_0

    const-wide/16 v5, -0x1

    cmp-long v3, v16, v5

    if-nez v3, :cond_1

    .line 1791
    :cond_0
    const-string v3, "ContactSaveService"

    const-string v5, "Invalid arguments for joinContacts request"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    :goto_0
    return-void

    .line 1795
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1799
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/ContactSaveService$JoinContactQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "contact_id=? OR contact_id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1804
    .local v12, "c":Landroid/database/Cursor;
    if-nez v12, :cond_2

    .line 1805
    const-string v3, "ContactSaveService"

    const-string v5, "Null cursor, failed to load the number of joined contacts"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1810
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    sget v5, Lcom/android/contacts/activities/JoinContactActivity;->MAX_JOINED_CONTACT_COUNT:I

    if-le v3, v5, :cond_3

    .line 1811
    const-string v3, "callbackIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 1812
    .local v13, "callbackIntent":Landroid/content/Intent;
    const-string v3, "joinFail"

    const/4 v5, 0x1

    invoke-virtual {v13, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1813
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1814
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 1815
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1820
    .end local v13    # "callbackIntent":Landroid/content/Intent;
    :cond_3
    const-wide/16 v30, -0x1

    .line 1822
    .local v30, "verifiedNameRawContactId":J
    const/16 v23, -0x1

    .line 1823
    .local v23, "maxDisplayNameSource":I
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v0, v3, [J

    move-object/from16 v27, v0

    .line 1824
    .local v27, "rawContactIds":[J
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move-object/from16 v0, v27

    array-length v3, v0

    move/from16 v0, v21

    if-ge v0, v3, :cond_5

    .line 1825
    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1826
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 1827
    .local v25, "rawContactId":J
    aput-wide v25, v27, v21

    .line 1828
    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 1829
    .local v24, "nameSource":I
    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    .line 1830
    move/from16 v23, v24

    .line 1824
    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 1837
    .end local v24    # "nameSource":I
    .end local v25    # "rawContactId":J
    :cond_5
    if-eqz v32, :cond_8

    .line 1838
    const/16 v21, 0x0

    :goto_2
    move-object/from16 v0, v27

    array-length v3, v0

    move/from16 v0, v21

    if-ge v0, v3, :cond_8

    .line 1839
    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1840
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v3, v5, v14

    if-nez v3, :cond_7

    .line 1841
    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 1842
    .restart local v24    # "nameSource":I
    move/from16 v0, v24

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    const-wide/16 v5, -0x1

    cmp-long v3, v30, v5

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_7

    .line 1845
    :cond_6
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v30

    .line 1838
    .end local v24    # "nameSource":I
    :cond_7
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 1851
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1855
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1856
    .local v4, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v21, 0x0

    :goto_3
    move-object/from16 v0, v27

    array-length v3, v0

    move/from16 v0, v21

    if-ge v0, v3, :cond_b

    .line 1857
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_4
    move-object/from16 v0, v27

    array-length v3, v0

    move/from16 v0, v22

    if-ge v0, v3, :cond_a

    .line 1858
    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 1859
    aget-wide v5, v27, v21

    aget-wide v7, v27, v22

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/ContactSaveService;->buildJoinContactDiff(Ljava/util/ArrayList;JJ)V

    .line 1857
    :cond_9
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 1851
    .end local v4    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v21    # "i":I
    .end local v22    # "j":I
    .end local v27    # "rawContactIds":[J
    :catchall_0
    move-exception v3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1856
    .restart local v4    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v21    # "i":I
    .restart local v22    # "j":I
    .restart local v27    # "rawContactIds":[J
    :cond_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 1866
    .end local v22    # "j":I
    :cond_b
    const-wide/16 v5, -0x1

    cmp-long v3, v30, v5

    if-eqz v3, :cond_c

    .line 1867
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v30

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 1869
    .local v11, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "name_verified"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1870
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1873
    .end local v11    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_c
    const/16 v28, 0x0

    .line 1876
    .local v28, "success":Z
    :try_start_1
    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1877
    const v3, 0x7f0e0055

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/ContactSaveService;->showToast(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1878
    const/16 v28, 0x1

    .line 1891
    :goto_5
    :try_start_2
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/contacts/ContactSaveService$JoinContactQuery;->PROJECTION:[Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    aget-wide v33, v27, v5

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v3

    const/4 v10, 0x0

    move-object v5, v2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1893
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1901
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1902
    .local v18, "deliverContactId":J
    const-string v3, "callbackIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 1903
    .restart local v13    # "callbackIntent":Landroid/content/Intent;
    if-eqz v28, :cond_d

    .line 1904
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    .line 1905
    .local v29, "uri":Landroid/net/Uri;
    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1907
    .end local v29    # "uri":Landroid/net/Uri;
    :cond_d
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1909
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1879
    .end local v13    # "callbackIntent":Landroid/content/Intent;
    .end local v18    # "deliverContactId":J
    :catch_0
    move-exception v20

    .line 1880
    .local v20, "e":Landroid/os/RemoteException;
    const-string v3, "ContactSaveService"

    const-string v5, "Failed to apply aggregation exception batch"

    move-object/from16 v0, v20

    invoke-static {v3, v5, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1881
    const v3, 0x7f0e007f

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    goto :goto_5

    .line 1882
    .end local v20    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v20

    .line 1883
    .local v20, "e":Landroid/content/OperationApplicationException;
    const-string v3, "ContactSaveService"

    const-string v5, "Failed to apply aggregation exception batch"

    move-object/from16 v0, v20

    invoke-static {v3, v5, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1884
    const v3, 0x7f0e007f

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    goto :goto_5

    .line 1885
    .end local v20    # "e":Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v20

    .line 1886
    .local v20, "e":Ljava/lang/NullPointerException;
    const-string v3, "ContactSaveService"

    const-string v5, "Failed to apply aggregation exception batch"

    move-object/from16 v0, v20

    invoke-static {v3, v5, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1887
    const v3, 0x7f0e007f

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    goto :goto_5

    .line 1894
    .end local v20    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v20

    .line 1895
    .local v20, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "ContactSaveService"

    const-string v5, "rawContactIds length is 0"

    move-object/from16 v0, v20

    invoke-static {v3, v5, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1897
    .end local v20    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_4
    move-exception v20

    .line 1898
    .local v20, "e":Ljava/lang/NullPointerException;
    const-string v3, "ContactSaveService"

    const-string v5, "Cursor dereferenced"

    move-object/from16 v0, v20

    invoke-static {v3, v5, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static registerListener(Lcom/android/contacts/ContactSaveService$Listener;)V
    .locals 3
    .param p0, "listener"    # Lcom/android/contacts/ContactSaveService$Listener;

    .prologue
    .line 238
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only activities can be registered to receive callback from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 243
    return-void
.end method

.method private removeMembersFromAgg(Landroid/content/ContentResolver;[JLjava/lang/String;)V
    .locals 15
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "contactsToRemove"    # [J
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 1404
    if-nez p2, :cond_1

    .line 1448
    :cond_0
    return-void

    .line 1408
    :cond_1
    move-object/from16 v0, p2

    array-length v11, v0

    .line 1409
    .local v11, "size":I
    const-wide/16 v2, -0x1

    .line 1411
    .local v2, "contactId":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v11, :cond_0

    .line 1412
    const/16 v12, 0x64

    sub-int v13, v11, v7

    if-ge v12, v13, :cond_2

    const/16 v5, 0x64

    .line 1414
    .local v5, "count":I
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1416
    .local v4, "contactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v5, :cond_3

    .line 1417
    sget-object v12, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1419
    .local v1, "builder":Landroid/content/ContentProviderOperation$Builder;
    const/4 v9, 0x0

    .line 1420
    .local v9, "selection":Ljava/lang/String;
    const/4 v12, 0x3

    new-array v10, v12, [Ljava/lang/String;

    .line 1422
    .local v10, "selectionArgs":[Ljava/lang/String;
    const-string v9, "contact_id = ? AND mimetype = ? AND title = ?"

    .line 1424
    const/4 v12, 0x0

    add-int v13, v7, v8

    aget-wide v13, p2, v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    .line 1425
    const/4 v12, 0x1

    const-string v13, "vnd.android.cursor.item/group_membership"

    aput-object v13, v10, v12

    .line 1426
    const/4 v12, 0x2

    aput-object p3, v10, v12

    .line 1428
    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1429
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1416
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1412
    .end local v1    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v4    # "contactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v5    # "count":I
    .end local v8    # "j":I
    .end local v9    # "selection":Ljava/lang/String;
    .end local v10    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    sub-int v5, v11, v7

    goto :goto_1

    .line 1434
    .restart local v4    # "contactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v5    # "count":I
    .restart local v8    # "j":I
    :cond_3
    :try_start_0
    const-string v12, "com.android.contacts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1411
    :goto_3
    add-int/lit8 v7, v7, 0x64

    goto :goto_0

    .line 1435
    :catch_0
    move-exception v6

    .line 1437
    .local v6, "e":Landroid/os/RemoteException;
    const-string v12, "ContactSaveService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Problem persisting user edits for contact ID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1440
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 1444
    .local v6, "e":Landroid/content/OperationApplicationException;
    const-string v12, "ContactSaveService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Assert failed in adding contact ID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ". Already exists in group "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private removeMembersFromGoogle(Landroid/content/ContentResolver;[JJ)V
    .locals 15
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "contactsToRemove"    # [J
    .param p3, "groupId"    # J

    .prologue
    .line 1460
    if-nez p2, :cond_1

    .line 1504
    :cond_0
    return-void

    .line 1464
    :cond_1
    move-object/from16 v0, p2

    array-length v11, v0

    .line 1465
    .local v11, "size":I
    const-wide/16 v2, -0x1

    .line 1467
    .local v2, "contactId":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v11, :cond_0

    .line 1468
    const/16 v12, 0x64

    sub-int v13, v11, v7

    if-ge v12, v13, :cond_2

    const/16 v5, 0x64

    .line 1470
    .local v5, "count":I
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1472
    .local v4, "contactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v5, :cond_3

    .line 1473
    sget-object v12, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1475
    .local v1, "builder":Landroid/content/ContentProviderOperation$Builder;
    const/4 v9, 0x0

    .line 1476
    .local v9, "selection":Ljava/lang/String;
    const/4 v12, 0x3

    new-array v10, v12, [Ljava/lang/String;

    .line 1478
    .local v10, "selectionArgs":[Ljava/lang/String;
    const-string v9, "contact_id = ? AND mimetype = ? AND data1 = ?"

    .line 1480
    const/4 v12, 0x0

    add-int v13, v7, v8

    aget-wide v13, p2, v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    .line 1481
    const/4 v12, 0x1

    const-string v13, "vnd.android.cursor.item/group_membership"

    aput-object v13, v10, v12

    .line 1482
    const/4 v12, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    .line 1484
    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1485
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1472
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1468
    .end local v1    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v4    # "contactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v5    # "count":I
    .end local v8    # "j":I
    .end local v9    # "selection":Ljava/lang/String;
    .end local v10    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    sub-int v5, v11, v7

    goto :goto_1

    .line 1490
    .restart local v4    # "contactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v5    # "count":I
    .restart local v8    # "j":I
    :cond_3
    :try_start_0
    const-string v12, "com.android.contacts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1467
    :goto_3
    add-int/lit8 v7, v7, 0x64

    goto :goto_0

    .line 1491
    :catch_0
    move-exception v6

    .line 1493
    .local v6, "e":Landroid/os/RemoteException;
    const-string v12, "ContactSaveService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Problem persisting user edits for contact ID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1496
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 1500
    .local v6, "e":Landroid/content/OperationApplicationException;
    const-string v12, "ContactSaveService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Assert failed in adding contact ID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ". Already exists in group "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private removeMembersFromGroup(Landroid/content/ContentResolver;[JJ)V
    .locals 11
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "rawContactsToRemove"    # [J
    .param p3, "groupId"    # J

    .prologue
    .line 1380
    if-nez p2, :cond_1

    .line 1392
    :cond_0
    return-void

    .line 1383
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v3, v0, v1

    .line 1387
    .local v3, "rawContactId":J
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "vnd.android.cursor.item/group_membership"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1383
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private renameGroup(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    .line 1022
    const-string v6, "groupId"

    invoke-virtual {p1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1023
    .local v1, "groupId":J
    const-string v6, "groupLabel"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1025
    .local v4, "label":Ljava/lang/String;
    cmp-long v6, v1, v8

    if-nez v6, :cond_0

    .line 1026
    const-string v6, "ContactSaveService"

    const-string v7, "Invalid arguments for renameGroup request"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :goto_0
    return-void

    .line 1030
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1031
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "title"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1033
    .local v3, "groupUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v3, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1035
    const-string v6, "callbackIntent"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1036
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1037
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private resetDefaultLine(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2485
    const-string v5, "dataId"

    invoke-virtual {p1, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2486
    .local v0, "dataId":J
    const/4 v3, 0x0

    .line 2487
    .local v3, "result":I
    cmp-long v5, v0, v8

    if-nez v5, :cond_1

    .line 2488
    const-string v5, "ContactSaveService"

    const-string v6, "resetDefaultLine Invalid data_ID for line setting "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    :cond_0
    :goto_0
    return-void

    .line 2492
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2494
    .local v2, "resolver":Landroid/content/ContentResolver;
    if-nez v2, :cond_2

    .line 2495
    const-string v5, "ContactSaveService"

    const-string v6, "resetDefaultLine failed to get resolver"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2502
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 2504
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "data15"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2506
    if-eqz v2, :cond_3

    .line 2507
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2511
    :cond_3
    if-ne v3, v6, :cond_0

    .line 2512
    const v5, 0x7f0e0492

    invoke-direct {p0, v5}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    goto :goto_0
.end method

.method private saveContact(Landroid/content/Intent;)V
    .locals 53
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 463
    const-string v5, "state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v45

    check-cast v45, Lcom/android/contacts/model/EntityDeltaList;

    .line 464
    .local v45, "state":Lcom/android/contacts/model/EntityDeltaList;
    const-string v5, "saveIsProfile"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    .line 465
    .local v29, "isProfile":Z
    const-string v5, "updatedPhotos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v49

    check-cast v49, Landroid/os/Bundle;

    .line 466
    .local v49, "updatedPhotos":Landroid/os/Bundle;
    const-string v5, "ringtoneUri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 467
    .local v43, "ringtone":Ljava/lang/String;
    const-string v5, "alerttoneUri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 468
    .local v12, "alerttone":Ljava/lang/String;
    const-string v5, "vibrationUri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 469
    .local v52, "vibration":Ljava/lang/String;
    const-string v5, "updatedNamecard"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v35

    check-cast v35, Landroid/os/Bundle;

    .line 472
    .local v35, "namecardOriginalPhotos":Landroid/os/Bundle;
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v11

    .line 473
    .local v11, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, v45

    invoke-static {v0, v11}, Lcom/android/contacts/model/EntityModifier;->trimEmpty(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)V

    .line 475
    const/16 v34, 0x0

    .line 477
    .local v34, "lookupUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 478
    .local v4, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    .line 480
    .local v18, "context":Landroid/content/Context;
    const/16 v46, 0x0

    .line 483
    .local v46, "succeeded":Z
    const-wide/16 v27, -0x1

    .line 486
    .local v27, "insertedRawContactId":J
    const/16 v47, 0x0

    .local v47, "tries":I
    move/from16 v48, v47

    .line 487
    .end local v47    # "tries":I
    .local v48, "tries":I
    :goto_0
    add-int/lit8 v47, v48, 0x1

    .end local v48    # "tries":I
    .restart local v47    # "tries":I
    const/4 v5, 0x3

    move/from16 v0, v48

    if-ge v0, v5, :cond_1

    .line 490
    :try_start_0
    move-object/from16 v0, v45

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDeltaList;->buildDiff(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v22

    .line 498
    .local v22, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v42, 0x0

    .line 499
    .local v42, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v5

    if-lez v5, :cond_0

    .line 501
    :try_start_1
    const-string v5, "com.android.contacts"

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v42

    .line 510
    :cond_0
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v22

    move-object/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->getRawContactId(Lcom/android/contacts/model/EntityDeltaList;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-wide v39

    .line 511
    .local v39, "rawContactId":J
    const-wide/16 v5, -0x1

    cmp-long v5, v39, v5

    if-nez v5, :cond_8

    .line 664
    .end local v22    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v39    # "rawContactId":J
    .end local v42    # "results":[Landroid/content/ContentProviderResult;
    :cond_1
    :goto_2
    if-eqz v49, :cond_19

    .line 665
    invoke-virtual/range {v49 .. v49}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 666
    .local v31, "key":Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 667
    .local v38, "photoFilePath":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v39

    .line 671
    .restart local v39    # "rawContactId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v39, v5

    if-gez v5, :cond_18

    .line 672
    move-wide/from16 v39, v27

    .line 673
    const-wide/16 v5, -0x1

    cmp-long v5, v39, v5

    if-nez v5, :cond_18

    .line 674
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Could not determine RawContact ID for image insertion"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 502
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v31    # "key":Ljava/lang/String;
    .end local v38    # "photoFilePath":Ljava/lang/String;
    .end local v39    # "rawContactId":J
    .restart local v22    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v42    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v23

    .line 503
    .local v23, "e":Ljava/lang/NullPointerException;
    :try_start_3
    const-string v5, "ContactSaveService"

    const-string v6, "Failed to save contact"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 591
    .end local v22    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v23    # "e":Ljava/lang/NullPointerException;
    .end local v42    # "results":[Landroid/content/ContentProviderResult;
    :catch_1
    move-exception v23

    .line 593
    .local v23, "e":Landroid/os/RemoteException;
    const-string v5, "ContactSaveService"

    const-string v6, "Problem persisting user edits"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 504
    .end local v23    # "e":Landroid/os/RemoteException;
    .restart local v22    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v42    # "results":[Landroid/content/ContentProviderResult;
    :catch_2
    move-exception v23

    .line 505
    .local v23, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string v5, "ContactSaveService"

    const-string v6, "Failed to save contact"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 596
    .end local v22    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v23    # "e":Ljava/lang/IllegalArgumentException;
    .end local v42    # "results":[Landroid/content/ContentProviderResult;
    :catch_3
    move-exception v23

    .line 599
    .local v23, "e":Landroid/content/OperationApplicationException;
    const/16 v30, 0x0

    .line 600
    .local v30, "isSIM":Z
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .restart local v26    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/model/EntityDelta;

    .line 601
    .local v21, "delta":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v51

    .line 602
    .local v51, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz v51, :cond_3

    .line 603
    const-string v5, "account_type"

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 615
    .local v10, "accountType":Ljava/lang/String;
    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 618
    :cond_4
    const-string v5, "ContactSaveService"

    const-string v6, "Is adn contact so did not make error."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/16 v30, 0x1

    .line 624
    .end local v10    # "accountType":Ljava/lang/String;
    .end local v21    # "delta":Lcom/android/contacts/model/EntityDelta;
    .end local v51    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_5
    if-nez v30, :cond_17

    .line 627
    const-string v5, "ContactSaveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Version consistency failed, re-parenting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v44, Ljava/lang/StringBuilder;

    const-string v5, "_id IN("

    move-object/from16 v0, v44

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    .local v44, "sb":Ljava/lang/StringBuilder;
    const/16 v24, 0x1

    .line 630
    .local v24, "first":Z
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 631
    .local v19, "count":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_4
    move/from16 v0, v25

    move/from16 v1, v19

    if-ge v0, v1, :cond_13

    .line 632
    move-object/from16 v0, v45

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v39

    .line 633
    .local v39, "rawContactId":Ljava/lang/Long;
    if-eqz v39, :cond_7

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_7

    .line 634
    if-nez v24, :cond_6

    .line 635
    const/16 v5, 0x2c

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 637
    :cond_6
    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 638
    const/16 v24, 0x0

    .line 631
    :cond_7
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 518
    .end local v19    # "count":I
    .end local v23    # "e":Landroid/content/OperationApplicationException;
    .end local v24    # "first":Z
    .end local v25    # "i":I
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v30    # "isSIM":Z
    .end local v44    # "sb":Ljava/lang/StringBuilder;
    .restart local v22    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local v39, "rawContactId":J
    .restart local v42    # "results":[Landroid/content/ContentProviderResult;
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ContactSaveService;->getInsertedRawContactId(Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v27

    .line 519
    if-eqz v29, :cond_c

    .line 523
    sget-object v5, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "lookup"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v14

    .line 527
    .local v14, "c":Landroid/database/Cursor;
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 528
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 529
    .local v16, "contactId":J
    const/4 v5, 0x1

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 530
    .local v33, "lookupKey":Ljava/lang/String;
    move-wide/from16 v0, v16

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v34

    .line 533
    .end local v16    # "contactId":J
    .end local v33    # "lookupKey":Ljava/lang/String;
    :cond_9
    :try_start_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 573
    .end local v14    # "c":Landroid/database/Cursor;
    :cond_a
    const-string v5, "ContactSaveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Saved contact. New URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/16 v46, 0x1

    .line 578
    if-eqz v42, :cond_1

    .line 579
    move-object/from16 v13, v42

    .local v13, "arr$":[Landroid/content/ContentProviderResult;
    array-length v0, v13

    move/from16 v32, v0

    .local v32, "len$":I
    const/16 v26, 0x0

    .local v26, "i$":I
    :goto_5
    move/from16 v0, v26

    move/from16 v1, v32

    if-ge v0, v1, :cond_1

    aget-object v20, v13, v26

    .line 580
    .local v20, "cpr":Landroid/content/ContentProviderResult;
    if-eqz v20, :cond_b

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    if-nez v5, :cond_12

    .line 579
    :cond_b
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 533
    .end local v13    # "arr$":[Landroid/content/ContentProviderResult;
    .end local v20    # "cpr":Landroid/content/ContentProviderResult;
    .end local v26    # "i$":I
    .end local v32    # "len$":I
    .restart local v14    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v5

    .line 536
    .end local v14    # "c":Landroid/database/Cursor;
    :cond_c
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v39

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v41

    .line 538
    .local v41, "rawContactUri":Landroid/net/Uri;
    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v34

    .line 540
    if-nez v34, :cond_d

    .line 541
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v39

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 545
    :cond_d
    new-instance v50, Landroid/content/ContentValues;

    invoke-direct/range {v50 .. v50}, Landroid/content/ContentValues;-><init>()V

    .line 546
    .local v50, "value":Landroid/content/ContentValues;
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_6
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/model/EntityDelta;

    .line 547
    .restart local v21    # "delta":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v51

    .line 548
    .restart local v51    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz v51, :cond_e

    .line 549
    if-eqz v34, :cond_e

    .line 550
    invoke-virtual/range {v50 .. v50}, Landroid/content/ContentValues;->clear()V

    .line 551
    if-eqz v43, :cond_f

    .line 552
    const-string v5, "custom_ringtone"

    move-object/from16 v0, v50

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :goto_7
    if-eqz v12, :cond_10

    .line 557
    const-string v5, "sec_custom_alert"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :goto_8
    if-eqz v52, :cond_11

    .line 562
    const-string v5, "sec_custom_vibration"

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :goto_9
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6

    .line 554
    :cond_f
    const-string v5, "custom_ringtone"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_7

    .line 559
    :cond_10
    const-string v5, "sec_custom_alert"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_8

    .line 564
    :cond_11
    const-string v5, "sec_custom_vibration"

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_9

    .line 583
    .end local v21    # "delta":Lcom/android/contacts/model/EntityDelta;
    .end local v41    # "rawContactUri":Landroid/net/Uri;
    .end local v50    # "value":Landroid/content/ContentValues;
    .end local v51    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v13    # "arr$":[Landroid/content/ContentProviderResult;
    .restart local v20    # "cpr":Landroid/content/ContentProviderResult;
    .local v26, "i$":I
    .restart local v32    # "len$":I
    :cond_12
    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_7 .. :try_end_7} :catch_3

    move-result v5

    if-gez v5, :cond_b

    .line 584
    const/16 v46, 0x0

    .line 585
    goto/16 :goto_2

    .line 641
    .end local v13    # "arr$":[Landroid/content/ContentProviderResult;
    .end local v20    # "cpr":Landroid/content/ContentProviderResult;
    .end local v22    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v32    # "len$":I
    .end local v39    # "rawContactId":J
    .end local v42    # "results":[Landroid/content/ContentProviderResult;
    .restart local v19    # "count":I
    .restart local v23    # "e":Landroid/content/OperationApplicationException;
    .restart local v24    # "first":Z
    .restart local v25    # "i":I
    .local v26, "i$":Ljava/util/Iterator;
    .restart local v30    # "isSIM":Z
    .restart local v44    # "sb":Ljava/lang/StringBuilder;
    :cond_13
    const-string v5, ")"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    if-eqz v24, :cond_15

    .line 643
    const-string v5, "ContactSaveService"

    const-string v6, "Version consistency failed for a new contact"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    .end local v19    # "count":I
    .end local v23    # "e":Landroid/content/OperationApplicationException;
    .end local v24    # "first":Z
    .end local v25    # "i":I
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v30    # "isSIM":Z
    .end local v44    # "sb":Ljava/lang/StringBuilder;
    :cond_14
    :goto_a
    return-void

    .line 646
    .restart local v19    # "count":I
    .restart local v23    # "e":Landroid/content/OperationApplicationException;
    .restart local v24    # "first":Z
    .restart local v25    # "i":I
    .restart local v26    # "i$":Ljava/util/Iterator;
    .restart local v30    # "isSIM":Z
    .restart local v44    # "sb":Ljava/lang/StringBuilder;
    :cond_15
    if-eqz v29, :cond_16

    sget-object v5, Landroid/provider/ContactsContract$RawContactsEntity;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    :goto_b
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v4, v6, v7, v8}, Lcom/android/contacts/model/EntityDeltaList;->fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v36

    .line 651
    .local v36, "newState":Lcom/android/contacts/model/EntityDeltaList;
    move-object/from16 v0, v36

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Lcom/android/contacts/model/EntityDeltaList;->mergeAfter(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/EntityDeltaList;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v45

    .line 653
    if-eqz v29, :cond_17

    .line 654
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_c
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/model/EntityDelta;

    .line 655
    .restart local v21    # "delta":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/EntityDelta;->setProfileQueryUri()V

    goto :goto_c

    .line 646
    .end local v21    # "delta":Lcom/android/contacts/model/EntityDelta;
    .end local v36    # "newState":Lcom/android/contacts/model/EntityDeltaList;
    :cond_16
    sget-object v5, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_b

    .end local v19    # "count":I
    .end local v24    # "first":Z
    .end local v25    # "i":I
    .end local v44    # "sb":Ljava/lang/StringBuilder;
    :cond_17
    move/from16 v48, v47

    .line 659
    .end local v47    # "tries":I
    .restart local v48    # "tries":I
    goto/16 :goto_0

    .line 679
    .end local v23    # "e":Landroid/content/OperationApplicationException;
    .end local v30    # "isSIM":Z
    .end local v48    # "tries":I
    .restart local v31    # "key":Ljava/lang/String;
    .restart local v38    # "photoFilePath":Ljava/lang/String;
    .restart local v39    # "rawContactId":J
    .restart local v47    # "tries":I
    :cond_18
    new-instance v37, Ljava/io/File;

    invoke-direct/range {v37 .. v38}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 680
    .local v37, "photoFile":Ljava/io/File;
    move-object/from16 v0, p0

    move-wide/from16 v1, v39

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->saveUpdatedPhoto(JLjava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v46, 0x0

    goto/16 :goto_3

    .line 685
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v31    # "key":Ljava/lang/String;
    .end local v37    # "photoFile":Ljava/io/File;
    .end local v38    # "photoFilePath":Ljava/lang/String;
    .end local v39    # "rawContactId":J
    :cond_19
    if-eqz v35, :cond_1c

    .line 686
    invoke-virtual/range {v35 .. v35}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .restart local v26    # "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_d
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 687
    .restart local v31    # "key":Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 688
    .restart local v38    # "photoFilePath":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v39

    .line 692
    .restart local v39    # "rawContactId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v39, v5

    if-gez v5, :cond_1b

    .line 693
    move-wide/from16 v39, v27

    .line 694
    const-wide/16 v5, -0x1

    cmp-long v5, v39, v5

    if-nez v5, :cond_1b

    .line 695
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Could not determine RawContact ID for image insertion"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 700
    :cond_1b
    new-instance v37, Ljava/io/File;

    invoke-direct/range {v37 .. v38}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 701
    .restart local v37    # "photoFile":Ljava/io/File;
    move-object/from16 v0, p0

    move-wide/from16 v1, v39

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->saveUpdatedNameCard(JLjava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1a

    const/16 v46, 0x0

    goto :goto_d

    .line 705
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v31    # "key":Ljava/lang/String;
    .end local v37    # "photoFile":Ljava/io/File;
    .end local v38    # "photoFilePath":Ljava/lang/String;
    .end local v39    # "rawContactId":J
    :cond_1c
    const-string v5, "callbackIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/content/Intent;

    .line 706
    .local v15, "callbackIntent":Landroid/content/Intent;
    if-eqz v15, :cond_14

    .line 707
    if-eqz v46, :cond_1d

    .line 711
    const-string v5, "saveSucceeded"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 713
    :cond_1d
    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 714
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto/16 :goto_a
.end method

.method private saveUpdatedNameCard(JLjava/io/File;)Z
    .locals 18
    .param p1, "rawContactId"    # J
    .param p3, "photoFile"    # Ljava/io/File;

    .prologue
    .line 799
    sget-object v14, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v14, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    const-string v15, "display_namecard"

    invoke-static {v14, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 806
    .local v11, "outputUri":Landroid/net/Uri;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 808
    .local v8, "inputStreamForHeader":Ljava/io/FileInputStream;
    const/4 v14, 0x6

    :try_start_1
    new-array v6, v14, [B

    .line 809
    .local v6, "headerBuffer":[B
    invoke-virtual {v8, v6}, Ljava/io/InputStream;->read([B)I

    .line 810
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 811
    .local v5, "fileHeader":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "GIF89a"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 812
    const-string v14, "ContactSaveService"

    const-string v15, "saveUpdatedNameCard Saving GIF image"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    const-string v15, "isAGIF"

    const-string v16, "true"

    invoke-virtual/range {v14 .. v16}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 818
    :goto_0
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 829
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "rw"

    invoke-virtual {v14, v11, v15}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    .line 832
    .local v10, "outputStream":Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 834
    .local v7, "inputStream":Ljava/io/FileInputStream;
    const/16 v14, 0x4000

    :try_start_5
    new-array v2, v14, [B

    .line 836
    .local v2, "buffer":[B
    const/4 v12, 0x0

    .line 837
    .local v12, "totalLength":I
    :goto_1
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "length":I
    if-lez v9, :cond_1

    .line 838
    const/4 v14, 0x0

    invoke-virtual {v10, v2, v14, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 839
    add-int/2addr v12, v9

    goto :goto_1

    .line 815
    .end local v2    # "buffer":[B
    .end local v7    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "length":I
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .end local v12    # "totalLength":I
    :cond_0
    :try_start_6
    const-string v14, "ContactSaveService"

    const-string v15, "saveUpdatedNameCard Saving normal image"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 818
    .end local v5    # "fileHeader":Ljava/lang/String;
    .end local v6    # "headerBuffer":[B
    :catchall_0
    move-exception v14

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    throw v14
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    .line 820
    .end local v8    # "inputStreamForHeader":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .line 821
    .local v4, "e":Ljava/io/IOException;
    const-string v14, "ContactSaveService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "saveUpdatedNameCard Failed to read photo header: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " because: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 822
    const/4 v14, 0x0

    .line 860
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    return v14

    .line 823
    :catch_1
    move-exception v4

    .line 824
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v14, "ContactSaveService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "saveUpdatedNameCard Failed to read photo header: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " because: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 825
    const/4 v14, 0x0

    goto :goto_2

    .line 841
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "buffer":[B
    .restart local v5    # "fileHeader":Ljava/lang/String;
    .restart local v6    # "headerBuffer":[B
    .restart local v7    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "inputStreamForHeader":Ljava/io/FileInputStream;
    .restart local v9    # "length":I
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "totalLength":I
    :cond_1
    :try_start_8
    const-string v14, "ContactSaveService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "saveUpdatedNameCard Wrote "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " bytes for photo "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 843
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 846
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 847
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->delete()Z

    .line 849
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 850
    .local v3, "context":Landroid/content/Context;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_data=\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 851
    .local v13, "where":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_3

    .line 860
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 843
    .end local v2    # "buffer":[B
    .end local v3    # "context":Landroid/content/Context;
    .end local v9    # "length":I
    .end local v12    # "totalLength":I
    .end local v13    # "where":Ljava/lang/String;
    :catchall_1
    move-exception v14

    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    throw v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 846
    .end local v7    # "inputStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v14

    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 847
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->delete()Z

    .line 849
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 850
    .restart local v3    # "context":Landroid/content/Context;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_data=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 851
    .restart local v13    # "where":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v13, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 852
    throw v14
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_3

    .line 853
    .end local v3    # "context":Landroid/content/Context;
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .end local v13    # "where":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 854
    .local v4, "e":Ljava/io/IOException;
    const-string v14, "ContactSaveService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "saveUpdatedNameCard Failed to write photo: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " because: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 855
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 856
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 857
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v14, "ContactSaveService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "saveUpdatedNameCard Failed to write photo: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " because: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    const/4 v14, 0x0

    goto/16 :goto_2
.end method

.method private saveUpdatedPhoto(JLjava/io/File;)Z
    .locals 18
    .param p1, "rawContactId"    # J
    .param p3, "photoFile"    # Ljava/io/File;

    .prologue
    .line 730
    sget-object v14, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v14, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    const-string v15, "display_photo"

    invoke-static {v14, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 737
    .local v11, "outputUri":Landroid/net/Uri;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 739
    .local v8, "inputStreamForHeader":Ljava/io/FileInputStream;
    const/4 v14, 0x6

    :try_start_1
    new-array v6, v14, [B

    .line 740
    .local v6, "headerBuffer":[B
    invoke-virtual {v8, v6}, Ljava/io/InputStream;->read([B)I

    .line 741
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 742
    .local v5, "fileHeader":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "GIF89a"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 743
    const-string v14, "ContactSaveService"

    const-string v15, "Saving GIF image"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    const-string v15, "isAGIF"

    const-string v16, "true"

    invoke-virtual/range {v14 .. v16}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 749
    :goto_0
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 760
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "rw"

    invoke-virtual {v14, v11, v15}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    .line 763
    .local v10, "outputStream":Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 765
    .local v7, "inputStream":Ljava/io/FileInputStream;
    const/16 v14, 0x4000

    :try_start_5
    new-array v2, v14, [B

    .line 767
    .local v2, "buffer":[B
    const/4 v12, 0x0

    .line 768
    .local v12, "totalLength":I
    :goto_1
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "length":I
    if-lez v9, :cond_1

    .line 769
    const/4 v14, 0x0

    invoke-virtual {v10, v2, v14, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 770
    add-int/2addr v12, v9

    goto :goto_1

    .line 746
    .end local v2    # "buffer":[B
    .end local v7    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "length":I
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .end local v12    # "totalLength":I
    :cond_0
    :try_start_6
    const-string v14, "ContactSaveService"

    const-string v15, "Saving normal image"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 749
    .end local v5    # "fileHeader":Ljava/lang/String;
    .end local v6    # "headerBuffer":[B
    :catchall_0
    move-exception v14

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    throw v14
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    .line 751
    .end local v8    # "inputStreamForHeader":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .line 752
    .local v4, "e":Ljava/io/IOException;
    const-string v14, "ContactSaveService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to read photo header: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " because: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 753
    const/4 v14, 0x0

    .line 791
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    return v14

    .line 754
    :catch_1
    move-exception v4

    .line 755
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v14, "ContactSaveService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to read photo header: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " because: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    const/4 v14, 0x0

    goto :goto_2

    .line 772
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "buffer":[B
    .restart local v5    # "fileHeader":Ljava/lang/String;
    .restart local v6    # "headerBuffer":[B
    .restart local v7    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "inputStreamForHeader":Ljava/io/FileInputStream;
    .restart local v9    # "length":I
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "totalLength":I
    :cond_1
    :try_start_8
    const-string v14, "ContactSaveService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Wrote "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " bytes for photo "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 774
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 777
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 778
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->delete()Z

    .line 780
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 781
    .local v3, "context":Landroid/content/Context;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_data=\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 782
    .local v13, "where":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_3

    .line 791
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 774
    .end local v2    # "buffer":[B
    .end local v3    # "context":Landroid/content/Context;
    .end local v9    # "length":I
    .end local v12    # "totalLength":I
    .end local v13    # "where":Ljava/lang/String;
    :catchall_1
    move-exception v14

    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    throw v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 777
    .end local v7    # "inputStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v14

    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 778
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->delete()Z

    .line 780
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 781
    .restart local v3    # "context":Landroid/content/Context;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_data=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 782
    .restart local v13    # "where":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v13, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 783
    throw v14
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_3

    .line 784
    .end local v3    # "context":Landroid/content/Context;
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .end local v13    # "where":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 785
    .local v4, "e":Ljava/io/IOException;
    const-string v14, "ContactSaveService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to write photo: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " because: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 786
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 787
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 788
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v14, "ContactSaveService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to write photo: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " because: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 789
    const/4 v14, 0x0

    goto/16 :goto_2
.end method

.method private setAlerttone(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1602
    const-string v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1603
    .local v0, "contactUri":Landroid/net/Uri;
    const-string v3, "customAlerttone"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1604
    .local v1, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1605
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for setAlerttone"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :goto_0
    return-void

    .line 1608
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1609
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "sec_custom_alert"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDefaultLine(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2364
    const-string v2, "dataId"

    const-wide/16 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 2365
    .local v8, "dataId":J
    const/4 v11, 0x0

    .line 2366
    .local v11, "result":I
    const/4 v13, -0x1

    .line 2367
    .local v13, "slotId":I
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-nez v2, :cond_1

    .line 2368
    const-string v2, "ContactSaveService"

    const-string v3, "Invalid data_ID for line setting "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    :cond_0
    :goto_0
    return-void

    .line 2371
    :cond_1
    const-string v2, "simcard_sim_id"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2372
    .local v12, "simId":I
    const/4 v2, -0x1

    if-ne v12, v2, :cond_2

    .line 2373
    const-string v2, "ContactSaveService"

    const-string v3, "Invalid lineID"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2376
    :cond_2
    const-string v2, "setDefaultLinePhoneNumber"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2377
    .local v10, "numberData":Ljava/lang/String;
    if-nez v10, :cond_3

    .line 2378
    const-string v2, "ContactSaveService"

    const-string v3, "Invalid NumberData"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2382
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2385
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-nez v1, :cond_4

    .line 2386
    const-string v2, "ContactSaveService"

    const-string v3, "failed to get resolver"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2390
    :cond_4
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype= \'vnd.android.cursor.item/phone_v2\' AND _id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2394
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    .line 2395
    :cond_5
    const v2, 0x7f0e007f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    .line 2396
    if-eqz v7, :cond_0

    .line 2397
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2401
    :cond_6
    if-eqz v7, :cond_7

    .line 2402
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2406
    :cond_7
    new-instance v15, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v15, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2412
    .local v15, "values":Landroid/content/ContentValues;
    const-string v2, "data15"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2416
    if-eqz v1, :cond_8

    .line 2417
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v15, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 2421
    :cond_8
    const/4 v2, 0x1

    if-ne v11, v2, :cond_a

    .line 2422
    const v3, 0x7f0e0491

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v4, v2

    const/4 v5, 0x1

    const/4 v2, 0x1

    if-ne v12, v2, :cond_9

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2427
    .local v14, "toastText":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/contacts/ContactSaveService;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2422
    .end local v14    # "toastText":Ljava/lang/String;
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2429
    :cond_a
    const v2, 0x7f0e007f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    goto/16 :goto_0
.end method

.method private setMediaRingtone(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1615
    :try_start_0
    const-string v3, "customRingtone"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1616
    .local v1, "mediaUri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 1617
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for setRingtone"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    .end local v1    # "mediaUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 1620
    .restart local v1    # "mediaUri":Landroid/net/Uri;
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1621
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "is_ringtone"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1623
    .end local v1    # "mediaUri":Landroid/net/Uri;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 1624
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setPrivate(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 2539
    const-string v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2540
    .local v0, "contactUri":Landroid/net/Uri;
    const-string v3, "is_private"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2541
    .local v1, "value":Z
    if-nez v0, :cond_0

    .line 2542
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for private request"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    :goto_0
    return-void

    .line 2546
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 2547
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "is_private"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2548
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRingtone(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1590
    const-string v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1591
    .local v0, "contactUri":Landroid/net/Uri;
    const-string v3, "customRingtone"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1592
    .local v1, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1593
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for setRingtone"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :goto_0
    return-void

    .line 1596
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1597
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "custom_ringtone"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSendToVoicemail(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 1545
    const-string v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1546
    .local v0, "contactUri":Landroid/net/Uri;
    const-string v3, "sendToVoicemailFlag"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1547
    .local v1, "value":Z
    if-nez v0, :cond_0

    .line 1548
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for setRedirectToVoicemail"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :goto_0
    return-void

    .line 1552
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1553
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "send_to_voicemail"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1554
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStarred(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 1519
    const-string v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1520
    .local v0, "contactUri":Landroid/net/Uri;
    const-string v3, "starred"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1521
    .local v1, "value":Z
    if-nez v0, :cond_0

    .line 1522
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for setStarred request"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    :goto_0
    return-void

    .line 1526
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1527
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "starred"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1528
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSuperPrimary(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1651
    const-string v3, "dataId"

    invoke-virtual {p1, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1652
    .local v0, "dataId":J
    cmp-long v3, v0, v7

    if-nez v3, :cond_0

    .line 1653
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for setSuperPrimary request"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :goto_0
    return-void

    .line 1658
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1659
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "is_super_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1660
    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1662
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setVibration(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1629
    const-string v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1630
    .local v0, "contactUri":Landroid/net/Uri;
    const-string v3, "customVibration"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1631
    .local v1, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1632
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for setVibration"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :goto_0
    return-void

    .line 1635
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1636
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "sec_custom_vibration"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "message"    # I

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/ContactSaveService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactSaveService$1;-><init>(Lcom/android/contacts/ContactSaveService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2314
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/ContactSaveService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactSaveService$3;-><init>(Lcom/android/contacts/ContactSaveService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2526
    return-void
.end method

.method private splitContacts(Landroid/content/Intent;)V
    .locals 31
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1949
    const-string v3, "contactId1"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    .line 1950
    .local v19, "contactId1":J
    const-string v3, "contactId2"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 1951
    .local v9, "contactId2":J
    const-string v3, "contactWritable"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    .line 1952
    .local v30, "writable":Z
    const/16 v28, 0x0

    .line 1953
    .local v28, "selectedContactUriToDelivery":Landroid/net/Uri;
    const-wide/16 v5, -0x1

    cmp-long v3, v19, v5

    if-eqz v3, :cond_0

    const-wide/16 v5, -0x1

    cmp-long v3, v9, v5

    if-nez v3, :cond_1

    .line 1954
    :cond_0
    const-string v3, "ContactSaveService"

    const-string v5, "Invalid arguments for joinContacts request"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :goto_0
    return-void

    .line 1957
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1959
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1964
    .local v17, "c":Landroid/database/Cursor;
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_2

    .line 1965
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1969
    :cond_2
    const/16 v27, 0x0

    .line 1970
    .local v27, "results":[Landroid/content/ContentProviderResult;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1972
    .local v4, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v7, 0x0

    .line 1973
    .local v7, "rawContactId":J
    const-wide/16 v25, 0x0

    .line 1975
    .local v25, "mainRawContactId":J
    if-eqz v17, :cond_5

    .line 1976
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1978
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1979
    cmp-long v3, v7, v9

    if-eqz v3, :cond_4

    .line 1980
    move-wide/from16 v25, v7

    move-object/from16 v3, p0

    move-wide v5, v9

    .line 1981
    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/ContactSaveService;->buildSplitContactDiff(Ljava/util/ArrayList;JJ)V

    move-object/from16 v5, p0

    move-object v6, v4

    .line 1982
    invoke-direct/range {v5 .. v10}, Lcom/android/contacts/ContactSaveService;->buildSplitContactDiff(Ljava/util/ArrayList;JJ)V

    .line 1984
    :cond_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1985
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1987
    :cond_5
    const/16 v29, 0x0

    .line 1989
    .local v29, "success":Z
    :try_start_0
    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v27

    .line 1990
    const v3, 0x7f0e027d

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/ContactSaveService;->showToast(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1991
    const/16 v29, 0x1

    .line 2000
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v13, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "contact_id"

    aput-object v5, v13, v3

    const/4 v3, 0x1

    const-string v5, "display_name"

    aput-object v5, v13, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v25

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 2003
    .local v24, "linkedCursor":Landroid/database/Cursor;
    if-eqz v24, :cond_8

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2004
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 2005
    .local v22, "linkedContactId":J
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v28

    .line 2006
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 2011
    .end local v22    # "linkedContactId":J
    :cond_6
    :goto_2
    const-string v3, "callbackIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 2012
    .local v18, "callbackIntent":Landroid/content/Intent;
    if-eqz v29, :cond_7

    .line 2013
    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2015
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1992
    .end local v18    # "callbackIntent":Landroid/content/Intent;
    .end local v24    # "linkedCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v21

    .line 1993
    .local v21, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1994
    const v3, 0x7f0e007f

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    goto :goto_1

    .line 1995
    .end local v21    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v21

    .line 1996
    .local v21, "e":Landroid/content/OperationApplicationException;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1997
    const v3, 0x7f0e007f

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    goto :goto_1

    .line 2007
    .end local v21    # "e":Landroid/content/OperationApplicationException;
    .restart local v24    # "linkedCursor":Landroid/database/Cursor;
    :cond_8
    if-eqz v24, :cond_6

    .line 2008
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public static unregisterListener(Lcom/android/contacts/ContactSaveService$Listener;)V
    .locals 1
    .param p0, "listener"    # Lcom/android/contacts/ContactSaveService$Listener;

    .prologue
    .line 246
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method private updateGroup(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1102
    const-string v1, "groupInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1104
    .local v3, "groupInfoArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/group/GroupInfo;>;"
    const-string v1, "groupLabel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1105
    .local v4, "label":Ljava/lang/String;
    const-string v1, "customRingtone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1106
    .local v5, "ringTone":Ljava/lang/String;
    const-string v1, "customAlerttone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1107
    .local v6, "messageAlert":Ljava/lang/String;
    const-string v1, "customVibration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1108
    .local v7, "vibration":Ljava/lang/String;
    const-string v1, "rawContactsToAdd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v9

    .line 1110
    .local v9, "contactsToAdd":[J
    const-string v1, "rawContactsToRemove"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v10

    .line 1112
    .local v10, "contactsToRemove":[J
    const-string v1, "EditMemberMode"

    const/16 v14, 0xe

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 1114
    .local v12, "mode":I
    const/4 v13, 0x0

    .line 1115
    .local v13, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .local v2, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v1, p0

    .line 1118
    invoke-direct/range {v1 .. v7}, Lcom/android/contacts/ContactSaveService;->editGroupInfo(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/content/ContentProviderResult;

    move-result-object v13

    .line 1122
    and-int/lit8 v1, v12, 0x1

    const/4 v14, 0x1

    if-ne v1, v14, :cond_0

    .line 1123
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 1124
    .local v11, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v4, v11}, Lcom/android/contacts/ContactSaveService;->addMembersToGoogle(Landroid/content/ContentResolver;[JLjava/lang/String;Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 1132
    .end local v11    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    :goto_0
    and-int/lit8 v1, v12, 0x1

    const/4 v14, 0x1

    if-ne v1, v14, :cond_1

    .line 1133
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 1134
    .restart local v11    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-virtual {v11}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10, v14, v15}, Lcom/android/contacts/ContactSaveService;->removeMembersFromGoogle(Landroid/content/ContentResolver;[JJ)V

    .line 1140
    .end local v11    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    :goto_1
    const-string v1, "callbackIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 1141
    .local v8, "callbackIntent":Landroid/content/Intent;
    if-eqz v13, :cond_2

    .line 1142
    const/4 v1, 0x0

    aget-object v1, v13, v1

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1149
    :goto_2
    const-string v1, "editGroup"

    const/4 v14, 0x1

    invoke-virtual {v8, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1150
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 1151
    return-void

    .line 1127
    .end local v8    # "callbackIntent":Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v4}, Lcom/android/contacts/ContactSaveService;->addMembersToAgg(Landroid/content/ContentResolver;[JLjava/lang/String;)V

    goto :goto_0

    .line 1137
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10, v4}, Lcom/android/contacts/ContactSaveService;->removeMembersFromAgg(Landroid/content/ContentResolver;[JLjava/lang/String;)V

    goto :goto_1

    .line 1144
    .restart local v8    # "callbackIntent":Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private updateMemberOnly(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 2061
    const-string v5, "groupInfo"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 2063
    .local v2, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    const-string v5, "membersToUpdate"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 2065
    .local v1, "contactsToUpdate":[J
    const-string v5, "EditMemberMode"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2067
    .local v3, "mode":I
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2070
    .local v4, "resolver":Landroid/content/ContentResolver;
    and-int/lit8 v5, v3, 0x2

    if-ne v5, v6, :cond_0

    if-eqz v2, :cond_0

    .line 2072
    and-int/lit8 v5, v3, 0x1

    if-ne v5, v7, :cond_3

    .line 2073
    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v1, v5, v2}, Lcom/android/contacts/ContactSaveService;->addMembersToGoogle(Landroid/content/ContentResolver;[JLjava/lang/String;Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 2081
    :cond_0
    :goto_0
    and-int/lit8 v5, v3, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    if-eqz v2, :cond_1

    .line 2083
    and-int/lit8 v5, v3, 0x1

    if-ne v5, v7, :cond_4

    .line 2084
    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v5

    invoke-direct {p0, v4, v1, v5, v6}, Lcom/android/contacts/ContactSaveService;->removeMembersFromGoogle(Landroid/content/ContentResolver;[JJ)V

    .line 2092
    :cond_1
    :goto_1
    const-string v5, "callbackIntent"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 2093
    .local v0, "callbackIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 2094
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 2096
    :cond_2
    return-void

    .line 2076
    .end local v0    # "callbackIntent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v1, v5}, Lcom/android/contacts/ContactSaveService;->addMembersToAgg(Landroid/content/ContentResolver;[JLjava/lang/String;)V

    goto :goto_0

    .line 2087
    :cond_4
    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v1, v5}, Lcom/android/contacts/ContactSaveService;->removeMembersFromAgg(Landroid/content/ContentResolver;[JLjava/lang/String;)V

    goto :goto_1
.end method

.method private updatePhoto(JLjava/lang/String;)Z
    .locals 2
    .param p1, "rawContactId"    # J
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 720
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 721
    .local v0, "photoFile":Ljava/io/File;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/ContactSaveService;->saveUpdatedPhoto(JLjava/io/File;)Z

    .line 722
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method deliverCallbackOnUiThread(Landroid/content/Intent;)V
    .locals 4
    .param p1, "callbackIntent"    # Landroid/content/Intent;

    .prologue
    .line 2330
    sget-object v2, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactSaveService$Listener;

    .line 2331
    .local v1, "listener":Lcom/android/contacts/ContactSaveService$Listener;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2334
    instance-of v2, v1, Lcom/android/contacts/activities/ContactEditorActivity;

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 2336
    check-cast v2, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ContactEditorActivity;->isContactSaveRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2338
    invoke-interface {v1, p1}, Lcom/android/contacts/ContactSaveService$Listener;->onServiceCompleted(Landroid/content/Intent;)V

    .line 2352
    .end local v1    # "listener":Lcom/android/contacts/ContactSaveService$Listener;
    :cond_1
    :goto_0
    return-void

    .line 2347
    .restart local v1    # "listener":Lcom/android/contacts/ContactSaveService$Listener;
    :cond_2
    invoke-interface {v1, p1}, Lcom/android/contacts/ContactSaveService$Listener;->onServiceCompleted(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 252
    .local v0, "service":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 256
    .end local v0    # "service":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "service":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const v2, 0x103012b

    .line 223
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 226
    const-string v0, "DEFAULT"

    const-string v1, "PHONE_WHITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->setTheme(I)V

    .line 235
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isBlackTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->setTheme(I)V

    goto :goto_0

    .line 233
    :cond_1
    const v0, 0x1030128

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->setTheme(I)V

    goto :goto_0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "action":Ljava/lang/String;
    const-string v1, "newRawContact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->createRawContact(Landroid/content/Intent;)V

    .line 266
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const-string v1, "saveContact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->saveContact(Landroid/content/Intent;)V

    .line 269
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 270
    :cond_2
    const-string v1, "createGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 271
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->createGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 272
    :cond_3
    const-string v1, "renameGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 273
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->renameGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 274
    :cond_4
    const-string v1, "deleteGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 275
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 276
    :cond_5
    const-string v1, "updateGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 277
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->updateGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 278
    :cond_6
    const-string v1, "setStarred"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 279
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setStarred(Landroid/content/Intent;)V

    goto :goto_0

    .line 280
    :cond_7
    const-string v1, "setSuperPrimary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 281
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setSuperPrimary(Landroid/content/Intent;)V

    goto :goto_0

    .line 282
    :cond_8
    const-string v1, "clearPrimary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 283
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->clearPrimary(Landroid/content/Intent;)V

    goto :goto_0

    .line 284
    :cond_9
    const-string v1, "delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 285
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteContact(Landroid/content/Intent;)V

    .line 286
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 287
    :cond_a
    const-string v1, "joinContacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 288
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->joinContacts(Landroid/content/Intent;)V

    .line 289
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 291
    :cond_b
    const-string v1, "splitContacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 292
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->splitContacts(Landroid/content/Intent;)V

    .line 293
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 294
    :cond_c
    const-string v1, "sendToVoicemail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 295
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setSendToVoicemail(Landroid/content/Intent;)V

    .line 296
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 297
    :cond_d
    const-string v1, "setRingtone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 298
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setRingtone(Landroid/content/Intent;)V

    .line 299
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 301
    :cond_e
    const-string v1, "deleteItem"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 302
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteItem(Landroid/content/Intent;)V

    .line 303
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 305
    :cond_f
    const-string v1, "setMediaRingtone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 306
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setMediaRingtone(Landroid/content/Intent;)V

    .line 307
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 309
    :cond_10
    const-string v1, "setAlerttone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 310
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setAlerttone(Landroid/content/Intent;)V

    .line 311
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 313
    :cond_11
    const-string v1, "setVibration"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 314
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setVibration(Landroid/content/Intent;)V

    .line 315
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 317
    :cond_12
    const-string v1, "chageOrder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 318
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->changeGroupOrder(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 320
    :cond_13
    const-string v1, "deleteMultipleGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 321
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteMultipleGroups(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 322
    :cond_14
    const-string v1, "deleteSingleGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 323
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteSingleGroups(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 325
    :cond_15
    const-string v1, "updateMemberOnly"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 326
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->updateMemberOnly(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 327
    :cond_16
    const-string v1, "setDefaultLine"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 328
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setDefaultLine(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 329
    :cond_17
    const-string v1, "clearDefaultLine"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 330
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->clearDefaultLine(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 331
    :cond_18
    const-string v1, "resetDefaultLine"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 332
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->resetDefaultLine(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 333
    :cond_19
    const-string v1, "setPrivate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 334
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setPrivate(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 335
    :cond_1a
    const-string v1, "updatePhoto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const-string v1, "rawContactId"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "path"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->updatePhoto(JLjava/lang/String;)Z

    goto/16 :goto_0
.end method
