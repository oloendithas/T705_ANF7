.class public Lcom/android/contacts/interactions/AddToRejectListInteraction;
.super Landroid/app/Fragment;
.source "AddToRejectListInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;,
        Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;,
        Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;,
        Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;,
        Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;
    }
.end annotation


# static fields
.field public static final ARG_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field public static final AUTOREJECT_TABLE:Ljava/lang/String; = "reject_num"

.field public static final AUTO_REJECT_AUTHORITY:Ljava/lang/String; = "com.android.phone.callsettings"

.field public static final AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

.field private static final FRAGMENT_TAG:Ljava/lang/String; = "addToRejectList"

.field private static final KEY_ACTIVE:Ljava/lang/String; = "active"

.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final KEY_CONTACT_URIS:Ljava/lang/String; = "contactUris"

.field private static final KEY_IS_ADD:Ljava/lang/String; = "isAdd"

.field private static final KEY_IS_ADDS:Ljava/lang/String; = "isAdds"

.field private static final NOT_EXIST_BLACKLIST:I = 0x0

.field private static final RESULT_HAS_SAME_NUMBER_CONTACTS:I = 0x65

.field private static final RESULT_IS_OVER_BLACK_LIST_SIZE:I = 0x64

.field private static final RESULT_OK:I = 0x66

.field private static final UNCHECK_BLACKLIST:I = 0x1


# instance fields
.field private mActive:Z

.field private mBlackListSizeOverDialog:Landroid/app/AlertDialog;

.field private mContactUri:Landroid/net/Uri;

.field private mContactUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsAdd:Z

.field private mIsAdds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mMessageId:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const-string v0, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 1515
    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/interactions/AddToRejectListInteraction;
    .param p1, "x1"    # Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->makeRejectValues(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/interactions/AddToRejectListInteraction;
    .param p1, "x1"    # Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->isOverBlackListSize(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/interactions/AddToRejectListInteraction;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/interactions/AddToRejectListInteraction;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/interactions/AddToRejectListInteraction;
    .param p1, "x1"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->showBlackListSizeOverDialog(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/interactions/AddToRejectListInteraction;
    .param p1, "x1"    # Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->checkSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/interactions/AddToRejectListInteraction;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->clearJobs()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/interactions/AddToRejectListInteraction;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->executeNextJob()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/interactions/AddToRejectListInteraction;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/interactions/AddToRejectListInteraction;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getCountOfTotalBlackList()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/contacts/interactions/AddToRejectListInteraction;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/interactions/AddToRejectListInteraction;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->queryExactlyMatchBlackList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/interactions/AddToRejectListInteraction;J)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/interactions/AddToRejectListInteraction;
    .param p1, "x1"    # J

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/interactions/AddToRejectListInteraction;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/interactions/AddToRejectListInteraction;
    .param p1, "x1"    # J

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getDisplayName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/interactions/AddToRejectListInteraction;
    .param p1, "x1"    # Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->findSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    return-void
.end method

.method private checkSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 3
    .param p1, "result"    # Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    .prologue
    .line 1166
    iget-object v1, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsIdsArr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1168
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->showHasSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    .line 1178
    :goto_0
    return-void

    .line 1172
    :cond_0
    new-instance v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$1;)V

    .line 1174
    .local v0, "task":Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private clearJobs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 404
    iput-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    .line 406
    iput-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    .line 408
    return-void
.end method

.method private executeNextJob()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    :cond_0
    iput-boolean v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 396
    :cond_1
    :goto_0
    return-void

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    .line 378
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    .line 382
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 388
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->startAddToRejectList()V

    goto :goto_0
.end method

.method private findSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 22
    .param p1, "result"    # Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    .prologue
    .line 922
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->contactUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 924
    .local v9, "contactId":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 928
    .local v18, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 930
    .local v21, "samePhoneNumContactsIdsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 932
    .local v20, "samePhoneNumContactsArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 936
    .local v19, "samePhoneNumArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 938
    .local v13, "idsBuilder":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_1

    .line 940
    if-nez v11, :cond_0

    .line 942
    const-string v2, " ( data1 = \'"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    const-string v2, "\'"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 946
    :cond_0
    const-string v2, " OR data1 = \'"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 956
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 958
    const-string v2, " ) "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.contacts/raw_contact_entities"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "contact_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "data1"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mimetype = \'vnd.android.cursor.item/phone_v2\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 978
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 980
    const/4 v14, 0x0

    .line 984
    .local v14, "isSameContactAgain":Z
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 988
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 990
    .local v12, "id":Ljava/lang/Long;
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 994
    .local v16, "name":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v9

    if-eqz v2, :cond_8

    .line 996
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 998
    .local v17, "phoneNum":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1000
    .local v15, "isSamePhoneNum":Z
    const/4 v11, 0x0

    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_4

    .line 1002
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1004
    const/4 v15, 0x1

    .line 1000
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1008
    :cond_4
    if-nez v15, :cond_5

    .line 1010
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    :cond_5
    const/4 v11, 0x0

    :goto_3
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_7

    .line 1016
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1018
    const/4 v14, 0x1

    .line 1014
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1022
    :cond_7
    if-nez v14, :cond_c

    .line 1024
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    .end local v15    # "isSamePhoneNum":Z
    .end local v17    # "phoneNum":Ljava/lang/String;
    :cond_8
    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1040
    .end local v12    # "id":Ljava/lang/Long;
    .end local v14    # "isSameContactAgain":Z
    .end local v16    # "name":Ljava/lang/String;
    :cond_9
    if-eqz v8, :cond_a

    .line 1042
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1048
    :cond_a
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsIdsArr:Ljava/util/ArrayList;

    .line 1050
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsArr:Ljava/util/ArrayList;

    .line 1052
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumArr:Ljava/util/ArrayList;

    .line 1054
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_b
    return-void

    .line 1030
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v12    # "id":Ljava/lang/Long;
    .restart local v14    # "isSameContactAgain":Z
    .restart local v15    # "isSamePhoneNum":Z
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v17    # "phoneNum":Ljava/lang/String;
    :cond_c
    const/4 v14, 0x0

    goto :goto_4
.end method

.method private getCountOfTotalBlackList()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 738
    sget-object v1, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    .line 740
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "reject_number"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "reject_checked"

    aput-object v4, v2, v0

    .line 744
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 748
    .local v7, "count":I
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 752
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 754
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 756
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 762
    :cond_0
    return v7
.end method

.method private getDisplayName(J)Ljava/lang/String;
    .locals 11
    .param p1, "contactId"    # J

    .prologue
    const v10, 0x104000e

    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 880
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v9

    .line 882
    .local v2, "projection":[Ljava/lang/String;
    const-string v8, "contact_id=? AND mimetype=\'vnd.android.cursor.item/name\'"

    .line 886
    .local v8, "selection":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 890
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/name\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 896
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 906
    .local v7, "displayName":Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 908
    if-nez v7, :cond_0

    .line 910
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 914
    :cond_0
    return-object v7

    .line 902
    .end local v7    # "displayName":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "displayName":Ljava/lang/String;
    goto :goto_0
.end method

.method private getPhoneNumbers(J)Ljava/util/ArrayList;
    .locals 11
    .param p1, "contactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 826
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v8, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v10

    const-string v0, "data2"

    aput-object v0, v2, v1

    .line 830
    .local v2, "projection":[Ljava/lang/String;
    const-string v9, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 834
    .local v9, "selection":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 838
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 844
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 846
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 852
    :cond_0
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 854
    .local v7, "phoneNum":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    .end local v7    # "phoneNum":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 862
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 868
    :cond_2
    return-object v8
.end method

.method private isOverBlackListSize(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)Z
    .locals 9
    .param p1, "result"    # Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    .prologue
    .line 1116
    move-object v5, p1

    .line 1118
    .local v5, "taskResult":Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;
    iget v1, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->countOfTotalBlackList:I

    .line 1120
    .local v1, "countOfTotalBlackList":I
    iget-object v4, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->rejectValues:Ljava/util/ArrayList;

    .line 1124
    .local v4, "rejectValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;>;"
    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    if-nez v6, :cond_1

    .line 1126
    const/16 v3, 0x64

    .line 1136
    .local v3, "nRejectMaxCnt":I
    :goto_0
    const/4 v0, 0x0

    .line 1138
    .local v0, "countOfNeedToAddContact":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 1140
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;

    iget v6, v6, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->check:I

    if-nez v6, :cond_0

    .line 1142
    add-int/lit8 v0, v0, 0x1

    .line 1138
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1130
    .end local v0    # "countOfNeedToAddContact":I
    .end local v2    # "i":I
    .end local v3    # "nRejectMaxCnt":I
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "autoreject_maxcount"

    const/16 v8, 0x64

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .restart local v3    # "nRejectMaxCnt":I
    goto :goto_0

    .line 1150
    .restart local v0    # "countOfNeedToAddContact":I
    .restart local v2    # "i":I
    :cond_2
    add-int v6, v1, v0

    if-le v6, v3, :cond_3

    .line 1152
    const/4 v6, 0x1

    .line 1156
    :goto_2
    return v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private makeRejectValues(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 6
    .param p1, "result"    # Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    .prologue
    .line 1068
    iget-object v0, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->exactlyMatchblackListHashMap:Ljava/util/HashMap;

    .line 1070
    .local v0, "exactlyMatchBlackListlHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    .line 1074
    .local v2, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    .local v4, "rejectValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1082
    new-instance v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;

    invoke-direct {v3, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    .line 1084
    .local v3, "rejectValue":Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->number:Ljava/lang/String;

    .line 1088
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->number:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1092
    :cond_0
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->check:I

    .line 1102
    :goto_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1096
    :cond_1
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->check:I

    goto :goto_1

    .line 1108
    .end local v3    # "rejectValue":Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;
    :cond_2
    iput-object v4, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->rejectValues:Ljava/util/ArrayList;

    .line 1110
    return-void
.end method

.method private queryExactlyMatchBlackList()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 770
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 772
    .local v7, "rejectCallHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    .line 774
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v12

    const-string v0, "reject_checked"

    aput-object v0, v2, v11

    .line 776
    .local v2, "projection":[Ljava/lang/String;
    const-string v10, "reject_match = 0"

    .line 780
    .local v10, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "reject_match = 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 784
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 786
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v11, :cond_1

    .line 788
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 818
    :cond_0
    :goto_0
    return-object v7

    .line 796
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 800
    :cond_2
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 802
    .local v9, "rejectNum":Ljava/lang/String;
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 804
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 806
    .local v8, "rejectCheck":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 812
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private showBlackListSizeOverDialog(I)V
    .locals 6
    .param p1, "maxCount"    # I

    .prologue
    .line 456
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e004d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "errorMessage":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e004c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$2;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e01c0

    new-instance v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$1;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    .line 513
    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 515
    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showHasSamePhoneNumberContacts(Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V
    .locals 12
    .param p1, "result"    # Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    .prologue
    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    .local v4, "sameNumberContactsName":Ljava/lang/StringBuilder;
    new-instance v3, Lcom/android/contacts/interactions/AddToRejectListInteraction$3;

    invoke-direct {v3, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$3;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    .line 537
    .local v3, "keylistener":Landroid/content/DialogInterface$OnKeyListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsArr:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 539
    iget-object v6, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumContactsArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 541
    .local v1, "contactsName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 543
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 547
    :cond_1
    if-lez v2, :cond_2

    .line 549
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :cond_2
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 563
    .end local v1    # "contactsName":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .local v5, "sameNumberString":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumArr:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 567
    if-nez v2, :cond_4

    .line 569
    iget-object v6, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 573
    :cond_4
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget-object v6, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->samePhoneNumArr:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 583
    :cond_5
    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e023f

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->displayName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "addToRejectMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 591
    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 644
    :cond_6
    :goto_3
    return-void

    .line 597
    :cond_7
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0e02fd

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/contacts/interactions/AddToRejectListInteraction$5;

    invoke-direct {v8, p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$5;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/contacts/interactions/AddToRejectListInteraction$4;

    invoke-direct {v8, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$4;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    .line 639
    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 640
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_6

    .line 641
    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mSamePhoneNumberContactsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_3
.end method

.method public static start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "isAdd"    # Z

    .prologue
    .line 209
    invoke-static {p0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;

    move-result-object v0

    return-object v0
.end method

.method private startAddToRejectList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 307
    new-instance v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    invoke-direct {v0, p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    .line 309
    .local v0, "result":Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;->contactUri:Landroid/net/Uri;

    .line 311
    iget-boolean v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    if-eqz v2, :cond_0

    .line 312
    new-instance v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;

    invoke-direct {v1, p0, v5}, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$1;)V

    .line 314
    .local v1, "task":Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;
    new-array v2, v4, [Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 324
    .end local v1    # "task":Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;
    :goto_0
    return-void

    .line 318
    :cond_0
    new-instance v1, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;

    invoke-direct {v1, p0, v5}, Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$1;)V

    .line 320
    .local v1, "task":Lcom/android/contacts/interactions/AddToRejectListInteraction$RemoveFromRejectListTask;
    new-array v2, v4, [Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectTaskResult;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "isAdd"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 267
    :goto_0
    return-object v0

    .line 245
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 247
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-string v2, "addToRejectList"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/interactions/AddToRejectListInteraction;

    .line 251
    .local v0, "fragment":Lcom/android/contacts/interactions/AddToRejectListInteraction;
    if-nez v0, :cond_1

    .line 253
    new-instance v0, Lcom/android/contacts/interactions/AddToRejectListInteraction;

    .end local v0    # "fragment":Lcom/android/contacts/interactions/AddToRejectListInteraction;
    invoke-direct {v0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;-><init>()V

    .line 255
    .restart local v0    # "fragment":Lcom/android/contacts/interactions/AddToRejectListInteraction;
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->setContactUri(Landroid/net/Uri;Z)V

    .line 257
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "addToRejectList"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->setContactUri(Landroid/net/Uri;Z)V

    goto :goto_0
.end method


# virtual methods
.method protected doDeleteContact(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1060
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v2, v2}, Lcom/android/contacts/ContactSaveService;->createDeleteContactIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1062
    return-void
.end method

.method isStarted()Z
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 700
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 702
    if-eqz p1, :cond_0

    .line 704
    const-string v2, "active"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 706
    const-string v2, "contactUri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    .line 708
    const-string v2, "isAdd"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    .line 710
    const-string v2, "contactUris"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    .line 714
    const-string v2, "isAdds"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    .line 716
    .local v1, "isAdds":[Z
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 718
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    .line 722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 724
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    aget-boolean v3, v1, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 732
    .end local v0    # "i":I
    .end local v1    # "isAdds":[Z
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 279
    iput-object p1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContext:Landroid/content/Context;

    .line 281
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 291
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 295
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 297
    iput-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    .line 301
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    .line 656
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 664
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 666
    const-string v2, "active"

    iget-boolean v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 668
    const-string v2, "contactUri"

    iget-object v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 670
    const-string v2, "isAdd"

    iget-boolean v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 672
    const-string v2, "contactUris"

    iget-object v3, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 676
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 678
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Z

    .line 680
    .local v1, "isAdds":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 682
    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 680
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 688
    :cond_0
    const-string v2, "isAdds"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 692
    .end local v0    # "i":I
    .end local v1    # "isAdds":[Z
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    if-eqz v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->startAddToRejectList()V

    .line 432
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 434
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 442
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 444
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mBlackListSizeOverDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 450
    :cond_0
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "isAdd"    # Z

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUris:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdds:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_2
    :goto_0
    return-void

    .line 350
    :cond_3
    iput-object p1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mContactUri:Landroid/net/Uri;

    .line 352
    iput-boolean p2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mIsAdd:Z

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->mActive:Z

    .line 356
    invoke-virtual {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    invoke-direct {p0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->startAddToRejectList()V

    goto :goto_0
.end method
