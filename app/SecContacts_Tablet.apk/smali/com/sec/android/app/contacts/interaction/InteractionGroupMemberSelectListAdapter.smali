.class public Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "InteractionGroupMemberSelectListAdapter.java"


# static fields
.field private static final CLAUSE_ONLY_EMAIL:Ljava/lang/String; = "has_email>0"

.field private static final CLAUSE_ONLY_PHONES:Ljava/lang/String; = "has_phone_number>0"

.field private static CONTACT_DEFAULT_EMERGENCY_COLUMN_INDEX:I = 0x0

.field protected static final FILTER_PROJECTION_ICE_WITHOUT_SNIPPET:[Ljava/lang/String;

.field protected static final PROJECTION_ICE:[Ljava/lang/String;

.field public static final SNIPPET_ARGS:Ljava/lang/String; = "\u0001,\u0001,\u2026,5"

.field public static final SNIPPET_ELLIPSIS:Ljava/lang/String; = "\u2026"

.field public static final SNIPPET_END_MATCH:C = '\u0001'

.field public static final SNIPPET_MAX_TOKENS:I = 0x5

.field public static final SNIPPET_START_MATCH:C = '\u0001'


# instance fields
.field private mActionCode:I

.field protected mExceptedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field protected mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mIsFromEmergencyMessage:Z

.field protected mMode:I

.field protected mModifiedMemberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedContactHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xf

    .line 82
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "display_name_alt"

    aput-object v1, v0, v6

    const-string v1, "sort_key"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const-string v1, "default_emergency"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->PROJECTION_ICE:[Ljava/lang/String;

    .line 103
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "display_name_alt"

    aput-object v1, v0, v6

    const-string v1, "sort_key"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const-string v1, "default_emergency"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->FILTER_PROJECTION_ICE_WITHOUT_SNIPPET:[Ljava/lang/String;

    .line 124
    sput v3, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->CONTACT_DEFAULT_EMERGENCY_COLUMN_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mModifiedMemberIds:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    .line 128
    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JI)V
    .locals 7
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "mode"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x5

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v0, "selection":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v2, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v4, 0xa0

    if-ne v3, v4, :cond_1

    .line 333
    const-string v3, "has_email>0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    if-ne p4, v5, :cond_0

    .line 335
    const-string v3, " AND default_emergency<2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_0
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_5

    .line 386
    :goto_1
    return-void

    .line 338
    :cond_1
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v4, 0xaa

    if-ne v3, v4, :cond_2

    .line 339
    const-string v3, "has_phone_number>0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    if-ne p4, v5, :cond_0

    .line 341
    const-string v3, " AND default_emergency<2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 344
    :cond_2
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v4, 0x96

    if-ne v3, v4, :cond_3

    .line 345
    const-string v3, "(has_email>0 OR has_phone_number>0)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    if-ne p4, v5, :cond_0

    .line 347
    const-string v3, " AND default_emergency<2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 350
    :cond_3
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v4, 0x122

    if-ne v3, v4, :cond_4

    .line 351
    const-string v3, "default_emergency<2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 353
    :cond_4
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v4, 0x123

    if-ne v3, v4, :cond_0

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id IN ( SELECT contact_id FROM view_raw_contacts WHERE account_type_and_data_set = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.osp.app.signin/directshare"

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 361
    :cond_5
    if-eq p4, v5, :cond_6

    .line 362
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->setSimFeatureSelection(Ljava/lang/StringBuilder;)V

    .line 365
    :cond_6
    const/4 v3, 0x4

    if-ne p4, v3, :cond_7

    .line 366
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 369
    new-array v3, v6, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 370
    :cond_7
    const/4 v3, 0x6

    if-ne p4, v3, :cond_8

    .line 371
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v3, "mimetype"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v3, " = ? AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v3, " data5 = 3 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const/4 v1, 0x0

    .line 377
    .local v1, "selectionArg":[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .end local v1    # "selectionArg":[Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/phone_v2"

    aput-object v3, v1, v6

    .line 380
    .restart local v1    # "selectionArg":[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 383
    .end local v1    # "selectionArg":[Ljava/lang/String;
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 384
    new-array v3, v6, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private createFilterUriBuilder(I)Landroid/net/Uri$Builder;
    .locals 7
    .param p1, "mode"    # I

    .prologue
    .line 445
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-nez v4, :cond_0

    .line 446
    const-string v4, "content://com.android.contacts/groups/not_assigned/contacts_filter"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 447
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .local v0, "builder":Landroid/net/Uri$Builder;
    move-object v1, v0

    .line 501
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .local v1, "builder":Landroid/net/Uri$Builder;
    :goto_0
    return-object v1

    .line 451
    .end local v1    # "builder":Landroid/net/Uri$Builder;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x0

    .line 452
    .local v2, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 454
    packed-switch p1, :pswitch_data_0

    .line 498
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 456
    :pswitch_0
    const-string v4, "content://com.android.contacts/groups/not_assigned/contacts_filter"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 458
    .restart local v3    # "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    :goto_1
    move-object v1, v0

    .line 501
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .restart local v1    # "builder":Landroid/net/Uri$Builder;
    goto :goto_0

    .line 463
    .end local v1    # "builder":Landroid/net/Uri$Builder;
    .end local v3    # "uri":Landroid/net/Uri;
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/groups/title/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts_filter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 465
    .restart local v3    # "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 466
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto :goto_1

    .line 470
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v3    # "uri":Landroid/net/Uri;
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/groups/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts_filter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 472
    .restart local v3    # "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 473
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto :goto_1

    .line 477
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v3    # "uri":Landroid/net/Uri;
    :pswitch_3
    const-string v4, "content://com.android.contacts/contacts/account_filter"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 478
    .restart local v3    # "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 479
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto :goto_1

    .line 483
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v3    # "uri":Landroid/net/Uri;
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/groups/title/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts_filter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 485
    .restart local v3    # "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "emergency"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 486
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 487
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto/16 :goto_1

    .line 490
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v3    # "uri":Landroid/net/Uri;
    :pswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper;->AUTO_GROUP_CONTENTS_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts_filter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 491
    .restart local v3    # "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "is_user_profile"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 492
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "link"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 493
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "has_email"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 494
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 495
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto/16 :goto_1

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setSimFeatureSelection(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "selection"    # Ljava/lang/StringBuilder;

    .prologue
    .line 390
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    .line 392
    .local v0, "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 393
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 394
    const-string v1, "vnd.sec.contact.sim"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 395
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    const-string v1, " AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_0
    const-string v1, "(link_type1 != \'vnd.sec.contact.sim\')"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_1
    const-string v1, "vnd.sec.contact.sim2"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 403
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 404
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 405
    const-string v1, " AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_2
    const-string v1, "(link_type1 != \'vnd.sec.contact.sim2\')"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_3
    :goto_0
    return-void

    .line 412
    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v1

    if-nez v1, :cond_3

    .line 413
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 414
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 415
    const-string v1, " AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_5
    const-string v1, "(link_type1 != \'vnd.sec.contact.sim\')"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;ZI)V
    .locals 5
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "checked"    # Z
    .param p4, "partition"    # I

    .prologue
    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, "ischecked":Z
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 552
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "contactId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "keyString":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 555
    const/4 v1, 0x1

    .line 560
    .end local v0    # "contactId":Ljava/lang/String;
    .end local v2    # "keyString":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1, v1}, Lcom/android/contacts/list/ContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    .line 561
    return-void

    .line 557
    .restart local v0    # "contactId":Ljava/lang/String;
    .restart local v2    # "keyString":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 539
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getHugeFontEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHugeFontEnabled(Z)V

    .line 545
    :goto_0
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mDisplayNameColumnIndex:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mAlternativeDisplayNameColumnIndex:I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContactNameDisplayOrder()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;IIZI)V

    .line 547
    return-void

    .line 542
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/contacts/list/ContactListItemView;->setHugeFontEnabled(Z)V

    goto :goto_0
.end method

.method protected bindSectionHeaderForICE(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 8
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "position"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const v7, 0x7f0e0266

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 565
    invoke-virtual {p1, v6}, Lcom/android/contacts/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    .line 566
    sget v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->CONTACT_DEFAULT_EMERGENCY_COLUMN_INDEX:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 567
    .local v0, "defaultEmergency":I
    if-nez p2, :cond_3

    .line 568
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0265

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    .line 573
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 574
    sget v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->CONTACT_DEFAULT_EMERGENCY_COLUMN_INDEX:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 575
    .local v1, "nextDefaultEmergency":I
    if-ne v0, v1, :cond_1

    :goto_1
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 579
    .end local v1    # "nextDefaultEmergency":I
    :goto_2
    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 601
    :goto_3
    return-void

    .line 571
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    goto :goto_0

    .restart local v1    # "nextDefaultEmergency":I
    :cond_1
    move v3, v4

    .line 575
    goto :goto_1

    .line 577
    .end local v1    # "nextDefaultEmergency":I
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_2

    .line 582
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 583
    sget v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->CONTACT_DEFAULT_EMERGENCY_COLUMN_INDEX:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 584
    .local v2, "prevDefaultEmergency":I
    if-eq v0, v2, :cond_4

    .line 585
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    .line 590
    :goto_4
    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 594
    .end local v2    # "prevDefaultEmergency":I
    :goto_5
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 595
    sget v5, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->CONTACT_DEFAULT_EMERGENCY_COLUMN_INDEX:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 596
    .restart local v1    # "nextDefaultEmergency":I
    if-ne v0, v1, :cond_6

    :goto_6
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 600
    .end local v1    # "nextDefaultEmergency":I
    :goto_7
    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_3

    .line 587
    .restart local v2    # "prevDefaultEmergency":I
    :cond_4
    invoke-virtual {p1, v6}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_4

    .line 592
    .end local v2    # "prevDefaultEmergency":I
    :cond_5
    invoke-virtual {p1, v6}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_5

    .restart local v1    # "nextDefaultEmergency":I
    :cond_6
    move v3, v4

    .line 596
    goto :goto_6

    .line 598
    .end local v1    # "nextDefaultEmergency":I
    :cond_7
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_7
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 4
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 507
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 508
    .local v0, "view":Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getUpperCaseQueryString()[C

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 510
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isSelectionVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    .line 513
    :cond_0
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v3, 0x122

    if-ne v1, v3, :cond_4

    .line 514
    invoke-virtual {p0, v0, p4, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindSectionHeaderForICE(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 519
    :goto_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 520
    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 523
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v3, 0x123

    if-ne v1, v3, :cond_1

    .line 524
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Contact_DisableAccountIconsInContactList"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 532
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isMultiSelectEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 533
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;ZI)V

    .line 534
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 535
    return-void

    :cond_3
    move-object v1, v2

    .line 508
    goto :goto_0

    .line 517
    :cond_4
    invoke-virtual {p0, v0, p4, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 528
    :cond_5
    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->bindAccountIcons(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_2
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getMode()I

    move-result v1

    .line 166
    .local v1, "mode":I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "query":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 169
    const-string v2, ""

    .line 171
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 176
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 177
    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 215
    .end local v2    # "query":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 216
    const-string v3, "sort_key"

    .line 221
    .local v3, "sortOrder":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 222
    return-void

    .line 181
    .end local v3    # "sortOrder":Ljava/lang/String;
    .restart local v2    # "query":Ljava/lang/String;
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_3

    .line 182
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 183
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 184
    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 186
    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 195
    :goto_2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 196
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 198
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v5, 0x122

    if-eq v4, v5, :cond_2

    const/4 v4, 0x5

    if-ne v1, v4, :cond_4

    .line 200
    :cond_2
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->FILTER_PROJECTION_ICE_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 206
    :goto_3
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_0

    .line 190
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->createFilterUriBuilder(I)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 191
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 193
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_2

    .line 201
    :cond_4
    const/4 v4, 0x6

    if-ne v1, v4, :cond_5

    .line 202
    sget-object v4, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper$VideoCallGroup;->PROJECTION_VIDEOCALL:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_3

    .line 204
    :cond_5
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_3

    .line 209
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "query":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->configureUri(Landroid/content/CursorLoader;JI)V

    .line 210
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->configureProjection(Landroid/content/CursorLoader;I)V

    .line 211
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_0

    .line 218
    :cond_7
    const-string v3, "sort_key_alt"

    .restart local v3    # "sortOrder":Ljava/lang/String;
    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;I)V
    .locals 2
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "mode"    # I

    .prologue
    .line 315
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v1, 0x122

    if-eq v0, v1, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 317
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->PROJECTION_ICE:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void

    .line 318
    :cond_1
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    .line 319
    sget-object v0, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper$VideoCallGroup;->PROJECTION_VIDEOCALL:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_2
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configureUri(Landroid/content/CursorLoader;JI)V
    .locals 7
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "mode"    # I

    .prologue
    const-wide/16 v5, 0x0

    .line 227
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-nez v2, :cond_1

    .line 228
    const-string v2, "content://com.android.contacts/groups/not_assigned/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 309
    .local v1, "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->applyDataRestriction(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 311
    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 312
    return-void

    .line 230
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "title":Ljava/lang/String;
    packed-switch p4, :pswitch_data_0

    .line 294
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    :pswitch_0
    const-string v2, "content://com.android.contacts/groups/not_assigned/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 298
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_1
    const-string v2, "VideoCalling"

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    cmp-long v2, p2, v5

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 300
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 303
    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "directory"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 240
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 241
    :cond_4
    const-string v2, "content://com.android.contacts/groups/not_assigned/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 242
    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 249
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 251
    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 255
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 257
    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 261
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_3
    const-string v2, "content://com.android.contacts/contacts/account"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 262
    .restart local v1    # "uri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 266
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 268
    .restart local v1    # "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "emergency"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 269
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    const/16 v3, 0x122

    if-ne v2, v3, :cond_2

    .line 270
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mIsFromEmergencyMessage:Z

    if-eqz v2, :cond_6

    .line 271
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "except_defaultId"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_1

    .line 276
    :cond_6
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "except_defaultId"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_1

    .line 286
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_5
    sget-object v1, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper;->AUTO_GROUP_CONTENTS_URI:Landroid/net/Uri;

    .line 287
    .restart local v1    # "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "is_user_profile"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 288
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "link"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 289
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "has_email"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "is_private"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 291
    goto/16 :goto_1

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected getMode()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mMode:I

    return v0
.end method

.method public setActionCode(I)V
    .locals 0
    .param p1, "actionCode"    # I

    .prologue
    .line 606
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mActionCode:I

    .line 607
    return-void
.end method

.method protected setExceptedAccounts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "exceptedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-eqz p1, :cond_0

    .line 144
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    .line 146
    :cond_0
    return-void
.end method

.method public setFromEmergencyMessage(Z)V
    .locals 0
    .param p1, "isFromEmergencyMessage"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mIsFromEmergencyMessage:Z

    .line 161
    return-void
.end method

.method protected setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 140
    return-void
.end method

.method protected setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mMode:I

    .line 132
    return-void
.end method

.method protected setModifiedMemeberIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "modifiedMemberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 150
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mModifiedMemberIds:Ljava/util/List;

    .line 152
    :cond_0
    return-void
.end method

.method public setSelctedContactHashMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberSelectListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 156
    return-void
.end method
