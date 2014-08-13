.class public Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "InteractionRCSeListAdapter.java"


# static fields
.field private static final CLAUSE_NO_DROMANT:Ljava/lang/String; = "sec_custom_dormant_contact==0"

.field private static final CLAUSE_ONLY_EMAIL:Ljava/lang/String; = "has_email>0"

.field private static final CLAUSE_ONLY_PHONES:Ljava/lang/String; = "has_phone_number>0"

.field public static final CONTACT_RCSE_BB:Landroid/net/Uri;

.field public static final CONTACT_RCSE_BB_FILTER:Landroid/net/Uri;

.field public static final SYSTEM_ID_MY_CONTACTS:Ljava/lang/String; = "Contacts"

.field public static final SYSTEM_TITLE_MY_CONTACTS:Ljava/lang/String; = "My Contacts"

.field private static final TAG:Ljava/lang/String; = "InteractionContactListAdapter"


# instance fields
.field private final CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mActionCode:I

.field public mExceptedRcsList:Ljava/lang/String;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-string v0, "content://com.android.contacts/contacts/rcse_bb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->CONTACT_RCSE_BB:Landroid/net/Uri;

    .line 86
    const-string v0, "content://com.android.contacts/contacts_list/rcse_bb/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->CONTACT_RCSE_BB_FILTER:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 81
    const-string v0, "content://com.android.contacts/contacts_list/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mExceptedRcsList:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 8
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 298
    if-nez p4, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-nez v6, :cond_0

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v3, "selection":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v4, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v6, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v6, :pswitch_data_0

    .line 411
    :cond_2
    :goto_1
    :pswitch_0
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xf0

    if-eq v6, v7, :cond_3

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xfa

    if-ne v6, v7, :cond_5

    .line 413
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 414
    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_4
    const-string v6, "(link_type1!=\'com.sec.android.app.snsaccountfacebook.account_type\' AND link_type1!=\'com.sec.android.app.snsaccountme2day.account_type\' AND link_type1!=\'com.sec.android.app.snsaccounttwitter.account_type\' AND link_type1!=\'com.sec.android.app.snsaccountmyspace.account_type\' AND link_type1!=\'com.sec.android.app.snsaccountlinkedin.account_type\')"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_5
    invoke-direct {p0, v3, p4}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->setSimFeatureSelection(Ljava/lang/StringBuilder;Lcom/android/contacts/list/ContactListFilter;)V

    .line 430
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0x125

    if-ne v6, v7, :cond_6

    .line 431
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mAccountType:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mAccountName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mExceptedRcsList:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 436
    const/4 v1, 0x0

    .line 437
    .local v1, "index":I
    const-string v6, " AND (_id NOT IN (\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    new-instance v5, Ljava/util/StringTokenizer;

    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mExceptedRcsList:Ljava/lang/String;

    const-string v7, ";"

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .local v5, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 441
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "id":Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 443
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\',\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 447
    goto :goto_2

    .line 313
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "tokenizer":Ljava/util/StringTokenizer;
    :pswitch_1
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xa0

    if-eq v6, v7, :cond_7

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0x118

    if-ne v6, v7, :cond_8

    .line 315
    :cond_7
    const-string v6, "has_email>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 317
    :cond_8
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xaa

    if-ne v6, v7, :cond_9

    .line 318
    const-string v6, "has_phone_number>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 321
    :cond_9
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xbe

    if-ne v6, v7, :cond_a

    .line 322
    const-string v6, "has_phone_number>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v6, "sec_custom_dormant_contact==0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 326
    :cond_a
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0x96

    if-ne v6, v7, :cond_b

    .line 327
    const-string v6, "(has_email>0 OR has_phone_number>0)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 329
    :cond_b
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0x126

    if-ne v6, v7, :cond_2

    .line 330
    const-string v6, "has_phone_number>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v6, "_id not in (Select contact_id from emergency, view_data where default_emergency=3 and phone_data_id is not null and view_data._id=phone_data_id)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 342
    :pswitch_2
    const-string v6, "starred==1"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xa0

    if-eq v6, v7, :cond_c

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0x118

    if-ne v6, v7, :cond_d

    .line 345
    :cond_c
    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const-string v6, "has_email>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 348
    :cond_d
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xaa

    if-eq v6, v7, :cond_e

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xbe

    if-ne v6, v7, :cond_f

    .line 350
    :cond_e
    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v6, "has_phone_number>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 353
    :cond_f
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0x96

    if-ne v6, v7, :cond_2

    .line 354
    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v6, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 362
    :pswitch_3
    const-string v6, "has_phone_number=1"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 366
    :pswitch_4
    const-string v6, "in_visible_group=1"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 368
    const-string v6, " AND has_phone_number=1"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 374
    :pswitch_5
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xa0

    if-eq v6, v7, :cond_10

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0x118

    if-ne v6, v7, :cond_11

    .line 376
    :cond_10
    const-string v6, "has_email>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 378
    :cond_11
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xaa

    if-eq v6, v7, :cond_12

    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xbe

    if-ne v6, v7, :cond_13

    .line 380
    :cond_12
    const-string v6, "has_phone_number>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 382
    :cond_13
    iget v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0x96

    if-ne v6, v7, :cond_2

    .line 383
    const-string v6, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 388
    :pswitch_6
    const-string v6, "InteractionContactListAdapter"

    const-string v7, "configureSelection : contact_phone_email"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v6, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 393
    :pswitch_7
    const-string v6, "InteractionContactListAdapter"

    const-string v7, "configureSelection : contact_email"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v6, "has_email>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 398
    :pswitch_8
    const-string v6, "InteractionContactListAdapter"

    const-string v7, "configureSelection : favorite_email"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v6, "has_email>0 and starred!=0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 403
    :pswitch_9
    const-string v6, "InteractionContactListAdapter"

    const-string v7, "configureSelection : favorite_phone_email"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v6, "(has_email>0 or has_phone_number>0) and starred!=0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 445
    .restart local v0    # "id":Ljava/lang/String;
    .restart local v1    # "index":I
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 448
    .end local v0    # "id":Ljava/lang/String;
    :cond_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'))"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .end local v1    # "index":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 452
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
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
    .line 193
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

    .line 195
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 196
    move-object v0, p1

    .line 197
    .local v0, "convertTitle":Ljava/lang/String;
    const-string v1, "Contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const-string v0, "My Contacts"

    .line 203
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

    .line 204
    if-nez v0, :cond_1

    .line 205
    const-string v1, "InteractionContactListAdapter"

    const-string v2, "convertSystemTitle : convertTitle is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    return-object v0

    .line 201
    .end local v0    # "convertTitle":Ljava/lang/String;
    :cond_2
    move-object v0, p0

    .restart local v0    # "convertTitle":Ljava/lang/String;
    goto :goto_0
.end method

.method private isCustomFilterForPhoneNumbersOnly()Z
    .locals 3

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 598
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
    .line 457
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    .line 459
    .local v0, "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 460
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 461
    const-string v1, "vnd.sec.contact.sim"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 462
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    const-string v1, " AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_0
    const-string v1, "(link_type1 != \'vnd.sec.contact.sim\')"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    :cond_1
    const-string v1, "vnd.sec.contact.sim2"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 470
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 471
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 472
    const-string v1, " AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_2
    const-string v1, "(link_type1 != \'vnd.sec.contact.sim2\')"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_3
    :goto_0
    return-void

    .line 479
    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v1

    if-nez v1, :cond_3

    .line 480
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 481
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 482
    const-string v1, " AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
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
    const/4 v8, 0x1

    .line 567
    const/4 v2, 0x0

    .line 568
    .local v2, "ischecked":Z
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 569
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "contactId":Ljava/lang/String;
    int-to-long v4, p3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 572
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, "keyString":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 586
    const/4 v2, 0x1

    .line 591
    .end local v0    # "contactId":Ljava/lang/String;
    .end local v3    # "keyString":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-super {p0, p1, v2}, Lcom/android/contacts/list/ContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    .line 592
    return-void

    .line 575
    .restart local v0    # "contactId":Ljava/lang/String;
    :cond_1
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 576
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, "displayName":Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "keyString":Ljava/lang/String;
    goto :goto_0

    .line 578
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v3    # "keyString":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 588
    .end local v1    # "displayName":Ljava/lang/String;
    .restart local v3    # "keyString":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 638
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 639
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

    .line 512
    move-object v1, p1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    .line 513
    .local v1, "view":Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->isGalSearchShowMoreItem(ILandroid/database/Cursor;)Z

    move-result v0

    .line 515
    .local v0, "isGalSearchShowMore":Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getUpperCaseQueryString()[C

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 516
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->isSelectionVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    .line 519
    :cond_0
    invoke-virtual {p0, v1, p4, p3}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 522
    if-eqz v0, :cond_3

    .line 523
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    .line 532
    :goto_1
    if-eqz v0, :cond_5

    .line 533
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->bindNameAsGalSearchShowMore(Lcom/android/contacts/list/ContactListItemView;)V

    .line 540
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Contact_DisableAccountIconsInContactList"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 548
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->isMultiSelectEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 550
    if-eqz v0, :cond_7

    .line 551
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->hideCheckBox(Lcom/android/contacts/list/ContactListItemView;)V

    .line 557
    :cond_1
    :goto_4
    invoke-virtual {p0, p2}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->isEasAccountPartition(I)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v0, :cond_8

    .line 558
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->bindGalTitleAndCompany(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 563
    :goto_5
    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 564
    return-void

    :cond_2
    move-object v2, v3

    .line 515
    goto :goto_0

    .line 524
    :cond_3
    int-to-long v4, p2

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_4

    invoke-virtual {p0, p2}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->isEasAccountPartition(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 526
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->bindGalPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 528
    :cond_4
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 535
    :cond_5
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_2

    .line 544
    :cond_6
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->bindAccountIcons(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_3

    .line 553
    :cond_7
    invoke-virtual {p0, v1, p3, p2}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;I)V

    goto :goto_4

    .line 560
    :cond_8
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListItemView;->hideGalTitleAndCompany()V

    goto :goto_5
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 103
    const-string v4, "InteractionContactListAdapter"

    const-string v5, " === configureLoader === "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    instance-of v4, p1, Lcom/android/contacts/list/ProfileAndContactsLoader;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 106
    check-cast v4, Lcom/android/contacts/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->shouldIncludeProfile()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 110
    .local v1, "filter":Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "query":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 113
    const-string v2, ""

    .line 115
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->CONTACT_RCSE_BB:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 120
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 121
    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 182
    .end local v2    # "query":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 184
    const-string v3, "sort_key"

    .line 188
    .local v3, "sortOrder":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 189
    return-void

    .line 125
    .end local v3    # "sortOrder":Ljava/lang/String;
    .restart local v2    # "query":Ljava/lang/String;
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_4

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_4

    .line 126
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->CONTACT_RCSE_BB_FILTER:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 127
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 128
    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 130
    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 133
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->isEasAccountPartition(J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 134
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->FILTER_GAL_SEARCH_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 171
    :goto_2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 172
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 173
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 136
    :cond_3
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_2

    .line 162
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_4
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->CONTACT_RCSE_BB_FILTER:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 163
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 165
    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_2

    .line 177
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "query":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 178
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 179
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 186
    :cond_6
    const-string v3, "sort_key_alt"

    .restart local v3    # "sortOrder":Ljava/lang/String;
    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 1
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 294
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 8
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    const-wide/16 v6, 0x0

    .line 214
    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->CONTACT_RCSE_BB:Landroid/net/Uri;

    .line 216
    .local v2, "uri":Landroid/net/Uri;
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mGroupFilter:Z

    if-eqz v3, :cond_0

    .line 219
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-lez v3, :cond_8

    .line 222
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "convertTitle":Ljava/lang/String;
    const-string v3, "vnd.sec.contact.agg.account_type"

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 226
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

    .line 241
    .end local v1    # "convertTitle":Ljava/lang/String;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v4, 0x123

    if-ne v3, v4, :cond_b

    .line 242
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mExtraValue:I

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_9

    .line 243
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

    .line 263
    :cond_1
    :goto_1
    cmp-long v3, p2, v6

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 264
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 269
    :cond_2
    if-eqz p4, :cond_4

    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v4, -0x3

    if-eq v3, v4, :cond_4

    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v4, -0x6

    if-eq v3, v4, :cond_4

    .line 271
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 272
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v3, "directory"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 274
    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-nez v3, :cond_3

    .line 275
    const-string v3, "account_name"

    iget-object v4, p4, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 276
    const-string v3, "account_type"

    iget-object v4, p4, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 278
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 281
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_4
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v4, 0xf0

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v4, 0xfa

    if-ne v3, v4, :cond_6

    .line 283
    :cond_5
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 287
    :cond_6
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->applyDataRestriction(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 289
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 290
    return-void

    .line 231
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

    .line 235
    .end local v1    # "convertTitle":Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-nez v3, :cond_0

    .line 236
    const-string v3, "content://com.android.contacts/groups/not_assigned/contacts"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_0

    .line 245
    :cond_9
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mExtraValue:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_a

    .line 246
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

    .line 249
    :cond_a
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "direct_share"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_1

    .line 253
    :cond_b
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v4, 0x125

    if-ne v3, v4, :cond_1

    .line 254
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
    .line 625
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mAccountType:Ljava/lang/String;

    .line 626
    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mAccountName:Ljava/lang/String;

    .line 627
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mAccountName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 628
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mAccountName:Ljava/lang/String;

    .line 629
    :cond_0
    return-void
.end method

.method public setActionCode(I)V
    .locals 0
    .param p1, "actionCode"    # I

    .prologue
    .line 603
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mActionCode:I

    .line 604
    return-void
.end method

.method public setExceptedList(Ljava/lang/String;)V
    .locals 0
    .param p1, "exceptedRcsList"    # Ljava/lang/String;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mExceptedRcsList:Ljava/lang/String;

    .line 646
    return-void
.end method

.method public setExtra(I)V
    .locals 0
    .param p1, "extraValue"    # I

    .prologue
    .line 620
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mExtraValue:I

    .line 621
    return-void
.end method

.method public setGroupExtra(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .param p1, "GroupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 612
    return-void
.end method

.method public setGroupFilter(Z)V
    .locals 0
    .param p1, "setGroupFilter"    # Z

    .prologue
    .line 607
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mGroupFilter:Z

    .line 608
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
    .line 615
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    .line 616
    return-void
.end method

.method public setSpeedDial(Z)V
    .locals 0
    .param p1, "isSpeedDial"    # Z

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionRCSeListAdapter;->mSpeedDial:Z

    .line 634
    return-void
.end method

.method public setTopDividerEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 642
    return-void
.end method
