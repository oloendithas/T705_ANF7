.class public Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "InteractionContactListAdapter.java"


# static fields
.field private static final CLAUSE_NO_DROMANT:Ljava/lang/String; = "sec_custom_dormant_contact==0"

.field private static final CLAUSE_ONLY_EMAIL:Ljava/lang/String; = "has_email>0"

.field private static final CLAUSE_ONLY_PHONES:Ljava/lang/String; = "has_phone_number>0"

.field public static final SYSTEM_ID_MY_CONTACTS:Ljava/lang/String; = "Contacts"

.field public static final SYSTEM_TITLE_MY_CONTACTS:Ljava/lang/String; = "My Contacts"

.field private static final TAG:Ljava/lang/String; = "InteractionContactListAdapter"


# instance fields
.field private final CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mActionCode:I

.field private mExtraValue:I

.field private mGroupFilter:Z

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

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

.field private mSpeedDial:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 79
    const-string v0, "content://com.android.contacts/contacts_list/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    .line 90
    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 9
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    const/16 v8, 0x118

    const/16 v7, 0xbe

    const/16 v6, 0xaa

    const/16 v5, 0xa0

    const/16 v4, 0x96

    .line 289
    if-nez p4, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v0, "selection":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v1, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    .line 402
    :cond_2
    :goto_1
    :pswitch_0
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v3, 0xfa

    if-ne v2, v3, :cond_5

    .line 404
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 405
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_4
    const-string v2, "(link_type1!=\'com.sec.android.app.snsaccountfacebook.account_type\' AND link_type1!=\'com.sec.android.app.snsaccountme2day.account_type\' AND link_type1!=\'com.sec.android.app.snsaccounttwitter.account_type\' AND link_type1!=\'com.sec.android.app.snsaccountmyspace.account_type\' AND link_type1!=\'com.sec.android.app.snsaccountlinkedin.account_type\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_5
    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSimFeatureSelection(Ljava/lang/StringBuilder;Lcom/android/contacts/list/ContactListFilter;)V

    .line 421
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v3, 0x125

    if-ne v2, v3, :cond_6

    .line 422
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mAccountType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mAccountName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 427
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-eq v2, v5, :cond_7

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v8, :cond_8

    .line 306
    :cond_7
    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 308
    :cond_8
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v6, :cond_9

    .line 309
    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 312
    :cond_9
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v7, :cond_a

    .line 313
    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v2, "sec_custom_dormant_contact==0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 317
    :cond_a
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v4, :cond_b

    .line 318
    const-string v2, "(has_email>0 OR has_phone_number>0)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 320
    :cond_b
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v3, 0x126

    if-ne v2, v3, :cond_2

    .line 321
    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v2, "_id not in (Select contact_id from emergency, view_data where default_emergency=3 and phone_data_id is not null and view_data._id=phone_data_id)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 333
    :pswitch_2
    const-string v2, "starred==1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-eq v2, v5, :cond_c

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v8, :cond_d

    .line 336
    :cond_c
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 339
    :cond_d
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-eq v2, v6, :cond_e

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v7, :cond_f

    .line 341
    :cond_e
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 344
    :cond_f
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v4, :cond_2

    .line 345
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v2, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 353
    :pswitch_3
    const-string v2, "has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 357
    :pswitch_4
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 359
    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 365
    :pswitch_5
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-eq v2, v5, :cond_10

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v8, :cond_11

    .line 367
    :cond_10
    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 369
    :cond_11
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-eq v2, v6, :cond_12

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v7, :cond_13

    .line 371
    :cond_12
    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 373
    :cond_13
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v4, :cond_2

    .line 374
    const-string v2, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 379
    :pswitch_6
    const-string v2, "InteractionContactListAdapter"

    const-string v3, "configureSelection : contact_phone_email"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v2, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 384
    :pswitch_7
    const-string v2, "InteractionContactListAdapter"

    const-string v3, "configureSelection : contact_email"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 389
    :pswitch_8
    const-string v2, "InteractionContactListAdapter"

    const-string v3, "configureSelection : favorite_email"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v2, "has_email>0 and starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 394
    :pswitch_9
    const-string v2, "InteractionContactListAdapter"

    const-string v3, "configureSelection : favorite_phone_email"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v2, "(has_email>0 or has_phone_number>0) and starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 300
    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static convertSystemTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "groupTitle"    # Ljava/lang/String;
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v1, "InteractionContactListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertSystemTitle : groupTitle is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , systemId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 187
    move-object v0, p1

    .line 188
    .local v0, "convertTitle":Ljava/lang/String;
    const-string v1, "Contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const-string v0, "My Contacts"

    .line 194
    :cond_0
    :goto_0
    const-string v1, "InteractionContactListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertSystemTitle : return value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-nez v0, :cond_1

    .line 196
    const-string v1, "InteractionContactListAdapter"

    const-string v2, "convertSystemTitle : convertTitle is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_1
    return-object v0

    .line 192
    .end local v0    # "convertTitle":Ljava/lang/String;
    :cond_2
    move-object v0, p0

    .restart local v0    # "convertTitle":Ljava/lang/String;
    goto :goto_0
.end method

.method private isCustomFilterForPhoneNumbersOnly()Z
    .locals 3

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 577
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "only_phones"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private setSimFeatureSelection(Ljava/lang/StringBuilder;Lcom/android/contacts/list/ContactListFilter;)V
    .locals 3
    .param p1, "selection"    # Ljava/lang/StringBuilder;
    .param p2, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 432
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    .line 434
    .local v0, "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 435
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 436
    const-string v1, "vnd.sec.contact.sim"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 437
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 438
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    const-string v1, " AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_0
    const-string v1, "(link_type1 != \'vnd.sec.contact.sim\')"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_1
    const-string v1, "vnd.sec.contact.sim2"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 445
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 446
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 447
    const-string v1, " AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_2
    const-string v1, "(link_type1 != \'vnd.sec.contact.sim2\')"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :cond_3
    :goto_0
    return-void

    .line 454
    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v1

    if-nez v1, :cond_3

    .line 455
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 456
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 457
    const-string v1, " AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :cond_5
    const-string v1, "(link_type1 != \'vnd.sec.contact.sim\')"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;I)V
    .locals 9
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "partition"    # I

    .prologue
    .line 542
    const/4 v3, 0x0

    .line 543
    .local v3, "ischecked":Z
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    .line 545
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "contactId":Ljava/lang/String;
    int-to-long v5, p3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 548
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 561
    .local v4, "keyString":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 562
    const/4 v3, 0x1

    .line 570
    .end local v0    # "contactId":Ljava/lang/String;
    .end local v4    # "keyString":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-super {p0, p1, v3}, Lcom/android/contacts/list/ContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    .line 571
    return-void

    .line 551
    .restart local v0    # "contactId":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    :try_start_1
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 552
    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "displayName":Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "keyString":Ljava/lang/String;
    goto :goto_0

    .line 554
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v4    # "keyString":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .restart local v1    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 564
    .end local v1    # "displayName":Ljava/lang/String;
    .restart local v4    # "keyString":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 566
    .end local v0    # "contactId":Ljava/lang/String;
    .end local v4    # "keyString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 567
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 617
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 618
    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 8
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 487
    move-object v1, p1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    .line 488
    .local v1, "view":Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isGalSearchShowMoreItem(ILandroid/database/Cursor;)Z

    move-result v0

    .line 490
    .local v0, "isGalSearchShowMore":Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getUpperCaseQueryString()[C

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 491
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isSelectionVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    .line 494
    :cond_0
    invoke-virtual {p0, v1, p4, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 497
    if-eqz v0, :cond_4

    .line 498
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    .line 507
    :goto_1
    if-eqz v0, :cond_6

    .line 508
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindNameAsGalSearchShowMore(Lcom/android/contacts/list/ContactListItemView;)V

    .line 514
    :goto_2
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v4, 0x123

    if-ne v2, v4, :cond_1

    .line 515
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Contact_DisableAccountIconsInContactList"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 523
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isMultiSelectEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 525
    if-eqz v0, :cond_8

    .line 526
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->hideCheckBox(Lcom/android/contacts/list/ContactListItemView;)V

    .line 532
    :cond_2
    :goto_4
    invoke-virtual {p0, p2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isEasAccountPartition(I)Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v0, :cond_9

    .line 533
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindGalTitleAndCompany(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 538
    :goto_5
    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 539
    return-void

    :cond_3
    move-object v2, v3

    .line 490
    goto :goto_0

    .line 499
    :cond_4
    int-to-long v4, p2

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_5

    invoke-virtual {p0, p2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isEasAccountPartition(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 501
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindGalPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 503
    :cond_5
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 510
    :cond_6
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_2

    .line 519
    :cond_7
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindAccountIcons(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_3

    .line 528
    :cond_8
    invoke-virtual {p0, v1, p3, p2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;I)V

    goto :goto_4

    .line 535
    :cond_9
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListItemView;->hideGalTitleAndCompany()V

    goto :goto_5
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 7
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 94
    const-string v4, "InteractionContactListAdapter"

    const-string v5, " === configureLoader === "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    instance-of v4, p1, Lcom/android/contacts/list/ProfileAndContactsLoader;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 97
    check-cast v4, Lcom/android/contacts/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->shouldIncludeProfile()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 101
    .local v1, "filter":Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "query":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 104
    const-string v2, ""

    .line 106
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 111
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 112
    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 173
    .end local v2    # "query":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 175
    const-string v3, "sort_key"

    .line 179
    .local v3, "sortOrder":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 180
    return-void

    .line 116
    .end local v3    # "sortOrder":Ljava/lang/String;
    .restart local v2    # "query":Ljava/lang/String;
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_6

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_6

    .line 117
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 118
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 121
    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 124
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isEasAccountPartition(J)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 125
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->FILTER_GAL_SEARCH_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 158
    :goto_2
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v5, 0xf0

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v5, 0xfa

    if-ne v4, v5, :cond_4

    .line 160
    :cond_3
    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 162
    :cond_4
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 163
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 164
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 127
    :cond_5
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_2

    .line 130
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_6
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v5, 0x123

    if-ne v4, v5, :cond_9

    .line 132
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mExtraValue:I

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_7

    .line 133
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "direct_share"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "filter"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "block_contacts"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 156
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    :goto_3
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_2

    .line 136
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_7
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mExtraValue:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_8

    .line 137
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "direct_share"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "filter"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "block_contacts"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto :goto_3

    .line 141
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_8
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "direct_share"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "filter"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto :goto_3

    .line 147
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_9
    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v5, 0x125

    if-ne v4, v5, :cond_a

    .line 148
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "account_filter"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto :goto_3

    .line 153
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 154
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    .line 168
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "query":Ljava/lang/String;
    :cond_b
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 169
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 170
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto/16 :goto_0

    .line 177
    :cond_c
    const-string v3, "sort_key_alt"

    .restart local v3    # "sortOrder":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 1
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 285
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 8
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    const-wide/16 v6, 0x0

    .line 205
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 207
    .local v2, "uri":Landroid/net/Uri;
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupFilter:Z

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-lez v3, :cond_8

    .line 213
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "convertTitle":Ljava/lang/String;
    const-string v3, "vnd.sec.contact.agg.account_type"

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/groups/title/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 232
    .end local v1    # "convertTitle":Ljava/lang/String;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v4, 0x123

    if-ne v3, v4, :cond_b

    .line 233
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mExtraValue:I

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_9

    .line 234
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "direct_share"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "block_contacts"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 254
    :cond_1
    :goto_1
    cmp-long v3, p2, v6

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 260
    :cond_2
    if-eqz p4, :cond_4

    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v4, -0x3

    if-eq v3, v4, :cond_4

    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v4, -0x6

    if-eq v3, v4, :cond_4

    .line 262
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 263
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v3, "directory"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 265
    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-nez v3, :cond_3

    .line 266
    const-string v3, "account_name"

    iget-object v4, p4, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 267
    const-string v3, "account_type"

    iget-object v4, p4, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 269
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 272
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_4
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v4, 0xf0

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v4, 0xfa

    if-ne v3, v4, :cond_6

    .line 274
    :cond_5
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 278
    :cond_6
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->applyDataRestriction(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 280
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 281
    return-void

    .line 222
    .restart local v1    # "convertTitle":Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/groups/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p4, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_0

    .line 226
    .end local v1    # "convertTitle":Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-nez v3, :cond_0

    .line 227
    const-string v3, "content://com.android.contacts/groups/not_assigned/contacts"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_0

    .line 236
    :cond_9
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mExtraValue:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_a

    .line 237
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "direct_share"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "block_contacts"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_1

    .line 240
    :cond_a
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "direct_share"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_1

    .line 244
    :cond_b
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v4, 0x125

    if-ne v3, v4, :cond_1

    .line 245
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_1
.end method

.method public setAccountTypeAndAccountName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mAccountType:Ljava/lang/String;

    .line 605
    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mAccountName:Ljava/lang/String;

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mAccountName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 607
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mAccountName:Ljava/lang/String;

    .line 608
    :cond_0
    return-void
.end method

.method public setActionCode(I)V
    .locals 0
    .param p1, "actionCode"    # I

    .prologue
    .line 582
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    .line 583
    return-void
.end method

.method public setExtra(I)V
    .locals 0
    .param p1, "extraValue"    # I

    .prologue
    .line 599
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mExtraValue:I

    .line 600
    return-void
.end method

.method public setGroupExtra(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .param p1, "GroupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 591
    return-void
.end method

.method public setGroupFilter(Z)V
    .locals 0
    .param p1, "setGroupFilter"    # Z

    .prologue
    .line 586
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupFilter:Z

    .line 587
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
    .line 594
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 595
    return-void
.end method

.method public setSpeedDial(Z)V
    .locals 0
    .param p1, "isSpeedDial"    # Z

    .prologue
    .line 612
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mSpeedDial:Z

    .line 613
    return-void
.end method

.method public setTopDividerEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 621
    return-void
.end method
