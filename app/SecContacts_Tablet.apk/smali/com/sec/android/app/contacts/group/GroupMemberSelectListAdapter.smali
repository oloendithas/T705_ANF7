.class public Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "GroupMemberSelectListAdapter.java"


# static fields
.field public static final SNIPPET_ARGS:Ljava/lang/String; = "\u0001,\u0001,\u2026,5"

.field public static final SNIPPET_ELLIPSIS:Ljava/lang/String; = "\u2026"

.field public static final SNIPPET_END_MATCH:C = '\u0001'

.field public static final SNIPPET_MAX_TOKENS:I = 0x5

.field public static final SNIPPET_START_MATCH:C = '\u0001'


# instance fields
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

.field protected mIsAutoAdd:Z

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

.field protected mOriginalMemberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mModifiedMemberIds:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mOriginalMemberIds:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    .line 83
    return-void
.end method

.method private bindEnableState(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v8, 0xd

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 458
    const/4 v2, 0x1

    .line 459
    .local v2, "isEnable":Z
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mIsAutoAdd:Z

    if-eqz v6, :cond_1

    .line 460
    iget v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mMode:I

    and-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    .line 461
    if-eqz p2, :cond_1

    .line 462
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, "string":Ljava/lang/String;
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 464
    .local v0, "contactId":J
    const-string v6, "com.google"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mOriginalMemberIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move v2, v5

    .line 475
    .end local v0    # "contactId":J
    .end local v3    # "string":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 476
    return-void

    .restart local v0    # "contactId":J
    .restart local v3    # "string":Ljava/lang/String;
    :cond_2
    move v2, v4

    .line 464
    goto :goto_0

    .line 467
    .end local v0    # "contactId":J
    .end local v3    # "string":Ljava/lang/String;
    :cond_3
    iget v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mMode:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 468
    if-eqz p2, :cond_1

    .line 469
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 470
    .restart local v3    # "string":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 471
    const-string v6, "com.google"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    move v2, v5

    :goto_1
    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1
.end method

.method private configureSelection(Landroid/content/CursorLoader;JI)V
    .locals 11
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "mode"    # I

    .prologue
    .line 300
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v7, "selection":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v8, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v9, 0xe

    if-ne p4, v9, :cond_9

    .line 304
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_5

    .line 305
    const-string v9, " _id NOT IN (SELECT contacts._id FROM contacts "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "JOIN view_raw_contacts ON (contacts._id = view_raw_contacts.contact_id) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "WHERE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 309
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v9, v9, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v9, v9, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 310
    if-eqz v2, :cond_0

    .line 311
    const-string v9, " OR "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_0
    const-string v9, "(account_type = ? AND account_name = ?)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v9, v9, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v9, v9, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    :cond_2
    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .end local v2    # "i":I
    :goto_1
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 325
    const-string v9, " AND "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v9

    if-nez v9, :cond_6

    .line 335
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v5

    .line 336
    .local v5, "isKnoxMode":Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 337
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "2wayflag"

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 338
    .local v4, "is2wayBridge":Z
    const-string v9, "2wayflag2"

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 339
    .local v3, "is2way2Bridge":Z
    if-eqz v5, :cond_7

    .line 340
    const-string v9, " AND _id IN ( SELECT contact_id FROM raw_contacts JOIN accounts ON (accounts._id=raw_contacts.account_id)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " WHERE account_type NOT IN (\'vnd.sec.contact.phone_personal\') AND contact_id IS NOT NULL )"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .end local v3    # "is2way2Bridge":Z
    .end local v4    # "is2wayBridge":Z
    .end local v5    # "isKnoxMode":Z
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    :goto_3
    const-wide/16 v9, 0x0

    cmp-long v9, p2, v9

    if-eqz v9, :cond_b

    .line 362
    :goto_4
    return-void

    .line 321
    :cond_5
    const-string v9, "link_type1 != \'vnd.sec.contact.my_profile\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 330
    :cond_6
    const-string v9, " AND "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 342
    .restart local v3    # "is2way2Bridge":Z
    .restart local v4    # "is2wayBridge":Z
    .restart local v5    # "isKnoxMode":Z
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_7
    if-nez v4, :cond_8

    if-eqz v3, :cond_4

    .line 343
    :cond_8
    const-string v9, " AND _id IN ( SELECT contact_id FROM raw_contacts JOIN accounts ON (accounts._id=raw_contacts.account_id)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " WHERE account_type NOT IN (\'vnd.sec.contact.phone_knox\',\'vnd.sec.contact.phone_knox2\' ) AND contact_id IS NOT NULL )"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 347
    .end local v3    # "is2way2Bridge":Z
    .end local v4    # "is2wayBridge":Z
    .end local v5    # "isKnoxMode":Z
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_9
    const/16 v9, 0xf

    if-ne p4, v9, :cond_a

    .line 348
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "accountType":Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "accountName":Ljava/lang/String;
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 352
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    :cond_a
    const/16 v9, 0x12

    if-ne p4, v9, :cond_4

    .line 353
    const-string v9, "has_phone_number"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 360
    :cond_b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 361
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_4
.end method

.method private createFilterUriBuilder(I)Landroid/net/Uri$Builder;
    .locals 7
    .param p1, "mode"    # I

    .prologue
    .line 240
    const/4 v3, 0x0

    .line 241
    .local v3, "title":Ljava/lang/String;
    const-wide/16 v1, -0x1

    .line 243
    .local v1, "groupId":J
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v5, :cond_0

    .line 244
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v1

    .line 248
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 287
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 251
    :sswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/groups/title/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/contacts_except_filter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 252
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 290
    .local v0, "builder":Landroid/net/Uri$Builder;
    :goto_0
    return-object v0

    .line 257
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v4    # "uri":Landroid/net/Uri;
    :sswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/groups/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/contacts_except_filter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 258
    .restart local v4    # "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 259
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto :goto_0

    .line 263
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v4    # "uri":Landroid/net/Uri;
    :sswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/groups/title/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/contacts_filter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 264
    .restart local v4    # "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 265
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto :goto_0

    .line 269
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v4    # "uri":Landroid/net/Uri;
    :sswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/groups/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/contacts_filter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 270
    .restart local v4    # "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 271
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto :goto_0

    .line 275
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v4    # "uri":Landroid/net/Uri;
    :sswitch_4
    const-string v5, "content://com.android.contacts/contacts_list/filter"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 276
    .restart local v4    # "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 277
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto :goto_0

    .line 281
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v4    # "uri":Landroid/net/Uri;
    :sswitch_5
    const-string v5, "content://com.android.contacts/contacts/account_filter"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 282
    .restart local v4    # "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 283
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto :goto_0

    .line 248
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0xe -> :sswitch_4
        0xf -> :sswitch_5
        0x12 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 423
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 424
    .local v0, "contactId":J
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 8
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    const/4 v7, 0x0

    .line 378
    move-object v1, p1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    .line 380
    .local v1, "view":Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getUpperCaseQueryString()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 382
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    .line 386
    :cond_0
    invoke-virtual {p0, v1, p4, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 388
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/16 v6, 0x9

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;III)V

    .line 396
    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 397
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindPresenceAndStatusMessage(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 399
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_DisableAccountIconsInContactList"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    :goto_2
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 406
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 407
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindSearchSnippet(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 412
    :goto_3
    invoke-direct {p0, v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindEnableState(Landroid/view/View;Landroid/database/Cursor;)V

    .line 414
    return-void

    :cond_1
    move-object v0, v7

    .line 380
    goto :goto_0

    .line 393
    :cond_2
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 403
    :cond_3
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindAccountIcons(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_2

    .line 409
    :cond_4
    invoke-virtual {v1, v7}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getMode()I

    move-result v1

    .line 126
    .local v1, "mode":I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 127
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "query":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 129
    const-string v2, ""

    .line 131
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 136
    sget-object v4, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 137
    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 166
    .end local v2    # "query":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 167
    const-string v3, "sort_key"

    .line 172
    .local v3, "sortOrder":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 173
    return-void

    .line 141
    .end local v3    # "sortOrder":Ljava/lang/String;
    .restart local v2    # "query":Ljava/lang/String;
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    .line 142
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 143
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 144
    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 146
    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 155
    :goto_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 157
    sget-object v4, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->createFilterUriBuilder(I)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 151
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 153
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_2

    .line 160
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "query":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->configureUri(Landroid/content/CursorLoader;JI)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->configureProjection(Landroid/content/CursorLoader;)V

    .line 162
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_0

    .line 169
    :cond_4
    const-string v3, "sort_key_alt"

    .restart local v3    # "sortOrder":Ljava/lang/String;
    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;)V
    .locals 1
    .param p1, "loader"    # Landroid/content/CursorLoader;

    .prologue
    .line 295
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method protected configureUri(Landroid/content/CursorLoader;JI)V
    .locals 8
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "mode"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 176
    const/4 v2, 0x0

    .line 177
    .local v2, "title":Ljava/lang/String;
    const-wide/16 v0, -0x1

    .line 180
    .local v0, "groupId":J
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v4, :cond_0

    .line 181
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v0

    .line 185
    :cond_0
    sparse-switch p4, :sswitch_data_0

    .line 221
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 188
    :sswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/groups/title/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts_except"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 225
    .local v3, "uri":Landroid/net/Uri;
    :goto_0
    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    invoke-static {v3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 229
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "directory"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 234
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 235
    return-void

    .line 194
    .end local v3    # "uri":Landroid/net/Uri;
    :sswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/groups/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts_except"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 196
    .restart local v3    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 200
    .end local v3    # "uri":Landroid/net/Uri;
    :sswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/groups/title/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 202
    .restart local v3    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 206
    .end local v3    # "uri":Landroid/net/Uri;
    :sswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/groups/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 207
    .restart local v3    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 211
    .end local v3    # "uri":Landroid/net/Uri;
    :sswitch_4
    const-string v4, "content://com.android.contacts/contacts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 212
    .restart local v3    # "uri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 216
    .end local v3    # "uri":Landroid/net/Uri;
    :sswitch_5
    const-string v4, "content://com.android.contacts/contacts/account"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 217
    .restart local v3    # "uri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 185
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0xe -> :sswitch_4
        0xf -> :sswitch_5
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getMode()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mMode:I

    return v0
.end method

.method public isEnabled(I)Z
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/16 v8, 0xd

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 434
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mIsAutoAdd:Z

    if-eqz v4, :cond_1

    .line 435
    iget v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mMode:I

    and-int/lit8 v4, v4, 0x8

    const/16 v7, 0x8

    if-ne v4, v7, :cond_3

    .line 436
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 437
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 438
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 441
    .local v0, "contactId":J
    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mOriginalMemberIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v4, v6

    :goto_0
    move v6, v4

    .line 454
    .end local v0    # "contactId":J
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "string":Ljava/lang/String;
    :cond_1
    :goto_1
    return v6

    .restart local v0    # "contactId":J
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "string":Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 441
    goto :goto_0

    .line 444
    .end local v0    # "contactId":J
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "string":Ljava/lang/String;
    :cond_3
    iget v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mMode:I

    and-int/lit8 v4, v4, 0x4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_1

    .line 445
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 446
    .restart local v2    # "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 447
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 449
    .restart local v3    # "string":Ljava/lang/String;
    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v6, v5

    goto :goto_1
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 418
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactListAdapter;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 419
    .local v0, "lView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 420
    return-object v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 368
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 373
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method protected setAutoAdd(Z)V
    .locals 0
    .param p1, "isAutoAdd"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mIsAutoAdd:Z

    .line 96
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
    .line 104
    .local p1, "exceptedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-eqz p1, :cond_0

    .line 105
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    .line 107
    :cond_0
    return-void
.end method

.method protected setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 101
    return-void
.end method

.method protected setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mMode:I

    .line 87
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
    .line 110
    .local p1, "modifiedMemberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 111
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mModifiedMemberIds:Ljava/util/List;

    .line 113
    :cond_0
    return-void
.end method

.method protected setOriginalMemeberIds(Ljava/util/List;)V
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
    .line 117
    .local p1, "originalMemberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 118
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mOriginalMemberIds:Ljava/util/List;

    .line 120
    :cond_0
    return-void
.end method
