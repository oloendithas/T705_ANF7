.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$19;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->registerBezelListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .prologue
    .line 5288
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$19;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/samsung/android/bezelinteraction/BezelEvent;)V
    .locals 19
    .param p1, "event"    # Lcom/samsung/android/bezelinteraction/BezelEvent;

    .prologue
    .line 5294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$19;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAdded()Z

    move-result v17

    if-nez v17, :cond_1

    .line 5383
    :cond_0
    :goto_0
    return-void

    .line 5299
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/bezelinteraction/BezelEvent;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$19;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 5301
    const/4 v5, 0x0

    .line 5302
    .local v5, "i":I
    new-instance v3, Lcom/android/contacts/preference/ContactsPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$19;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 5303
    .local v3, "contactsPreferences":Lcom/android/contacts/preference/ContactsPreferences;
    invoke-virtual {v3}, Lcom/android/contacts/preference/ContactsPreferences;->getSendContactType()I

    move-result v11

    .line 5307
    .local v11, "sendType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$19;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 5309
    .local v12, "tmpSelectedUris":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 5311
    .local v16, "vcardUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$19;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 5312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$19;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v4

    .line 5315
    .local v4, "count":I
    const/4 v10, 0x0

    .local v10, "position":I
    :goto_1
    if-ge v10, v4, :cond_4

    .line 5316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$19;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/contacts/list/ContactListAdapter;

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/contacts/list/ContactListAdapter;->getContactItemId(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 5317
    .local v2, "contactId":Ljava/lang/Long;
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 5318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$19;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/contacts/list/ContactListAdapter;

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/contacts/list/ContactListAdapter;->isSharableContact(I)Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/android/contacts/ContactsUtils;->isUndeletableProfile(J)Z

    move-result v17

    if-nez v17, :cond_2

    .line 5320
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5315
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 5327
    .end local v2    # "contactId":Ljava/lang/Long;
    .end local v4    # "count":I
    .end local v10    # "position":I
    :cond_3
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 5328
    .local v7, "idSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5329
    .local v6, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$19;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v6, v12}, Lcom/android/contacts/ContactsUtils;->getSharableOnly(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;)Z

    .line 5341
    .end local v6    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v7    # "idSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_4
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v17

    if-gtz v17, :cond_6

    .line 5342
    :cond_5
    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.samsung.android.sconnect.START"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5378
    .local v8, "intent":Landroid/content/Intent;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$19;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5343
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_9

    .line 5345
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 5347
    .local v14, "uriIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 5348
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 5349
    .local v9, "lookupKey":Ljava/lang/String;
    sget-object v17, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-static {v0, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5351
    add-int/lit8 v5, v5, 0x1

    const/16 v17, 0xfa

    move/from16 v0, v17

    if-lt v5, v0, :cond_7

    .line 5356
    .end local v9    # "lookupKey":Ljava/lang/String;
    :cond_8
    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.samsung.android.sconnect.START"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5357
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v17, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_2

    .line 5359
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v14    # "uriIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 5360
    .restart local v14    # "uriIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 5362
    .local v15, "uriListBuilder":Ljava/lang/StringBuilder;
    :cond_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 5363
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 5364
    .restart local v9    # "lookupKey":Ljava/lang/String;
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5365
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5366
    add-int/lit8 v5, v5, 0x1

    const/16 v17, 0xbb8

    move/from16 v0, v17

    if-le v5, v0, :cond_a

    .line 5371
    .end local v9    # "lookupKey":Ljava/lang/String;
    :cond_b
    sget-object v17, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 5373
    .local v13, "uri":Landroid/net/Uri;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5375
    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.samsung.android.sconnect.START"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5376
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v17, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 5379
    .end local v3    # "contactsPreferences":Lcom/android/contacts/preference/ContactsPreferences;
    .end local v5    # "i":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v11    # "sendType":I
    .end local v12    # "tmpSelectedUris":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v13    # "uri":Landroid/net/Uri;
    .end local v14    # "uriIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15    # "uriListBuilder":Ljava/lang/StringBuilder;
    .end local v16    # "vcardUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/bezelinteraction/BezelEvent;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 5380
    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.samsung.android.sconnect.START"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5381
    .restart local v8    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$19;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
