.class public Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;
.super Ljava/lang/Thread;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EabSubscribeThread"
.end annotation


# instance fields
.field mContactUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)V
    .locals 2
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 4404
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    .line 4406
    const-string v0, "EabSubscribeThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;->mContactUri:Landroid/net/Uri;

    .line 4407
    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;->mContactUri:Landroid/net/Uri;

    .line 4408
    const-string v0, "EAB-ContactEditorFragment"

    const-string v1, "EabSubscribeThread-"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 4412
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v9

    .line 4413
    .local v9, "daemon":Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;

    move-result-object v2

    .line 4414
    .local v2, "dbHelper":Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 4415
    .local v22, "subscribenumList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;
    invoke-static {v4}, Lcom/android/contacts/editor/ContactEditorFragment;->access$4300(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 4416
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;
    invoke-static {v4}, Lcom/android/contacts/editor/ContactEditorFragment;->access$4300(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 4417
    .local v8, "count":I
    const-string v4, "EAB-ContactEditorFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EabSubscribeThread run-(count)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 4420
    .local v19, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v8, :cond_a

    .line 4421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;
    invoke-static {v4}, Lcom/android/contacts/editor/ContactEditorFragment;->access$4300(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/contacts/model/EntityDelta;

    .line 4422
    .local v24, "valuea":Lcom/android/contacts/model/EntityDelta;
    const-string v4, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 4424
    .local v20, "phoneValueDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v20, :cond_9

    .line 4425
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 4426
    .local v23, "value":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "data1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isChanged(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v14, 0x1

    .line 4438
    .local v14, "isEdited":Z
    :goto_2
    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v15

    .line 4439
    .local v15, "isInserted":Z
    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v13, 0x1

    .line 4440
    .local v13, "isDeleted":Z
    :goto_3
    const/16 v21, -0x1

    .line 4441
    .local v21, "state":I
    if-eqz v14, :cond_4

    .line 4442
    const/16 v21, 0x0

    .line 4448
    :cond_1
    :goto_4
    const-string v4, "data1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4449
    .local v18, "number":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;->mContactUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 4452
    .local v16, "mRawContactId":J
    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "######RAW_CONTACT ID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EabSubscribeThread run- Number:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..State:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isNumSendSubscribe(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4457
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->modifyNumberForSubscribe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4458
    .local v3, "editednumber":Ljava/lang/String;
    invoke-virtual {v9, v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getContactsListUriType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4459
    .local v10, "existNumber":Ljava/lang/String;
    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EabSubscribeThread run- existNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4461
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v4}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4462
    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->updateNumberForProfileDB(Ljava/lang/String;Ljava/lang/String;)I

    .line 4463
    sget-object v4, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->userProfileContacts:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4468
    :goto_5
    invoke-virtual {v9}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4469
    packed-switch v21, :pswitch_data_0

    .line 4489
    const-string v4, "EAB-ContactEditorFragment"

    const-string v5, "Neither deleted/edited/inserted case entered!!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4426
    .end local v3    # "editednumber":Ljava/lang/String;
    .end local v10    # "existNumber":Ljava/lang/String;
    .end local v13    # "isDeleted":Z
    .end local v14    # "isEdited":Z
    .end local v15    # "isInserted":Z
    .end local v16    # "mRawContactId":J
    .end local v18    # "number":Ljava/lang/String;
    .end local v21    # "state":I
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 4439
    .restart local v14    # "isEdited":Z
    .restart local v15    # "isInserted":Z
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 4443
    .restart local v13    # "isDeleted":Z
    .restart local v21    # "state":I
    :cond_4
    if-eqz v15, :cond_5

    .line 4444
    const/16 v21, 0x1

    goto/16 :goto_4

    .line 4445
    :cond_5
    if-eqz v13, :cond_1

    .line 4446
    const/16 v21, 0x2

    goto/16 :goto_4

    .line 4465
    .restart local v3    # "editednumber":Ljava/lang/String;
    .restart local v10    # "existNumber":Ljava/lang/String;
    .restart local v16    # "mRawContactId":J
    .restart local v18    # "number":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->updatesubnumber(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4472
    :pswitch_0
    const-string v4, "EAB-ContactEditorFragment"

    const-string v5, "Should send subscribe for this number.."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4474
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v4}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4477
    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const-string v7, "false"

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getProfileDBOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 4482
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v4}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4483
    sget-object v4, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->userProfileContacts:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 4493
    :cond_7
    const-string v4, "EAB-ContactEditorFragment"

    const-string v5, "IMS is not registered "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4494
    sget v4, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->mCapabilityDiscover:I

    if-nez v4, :cond_8

    .line 4496
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v4}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4497
    const-string v4, "3"

    const-string v5, "1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getProfileDBOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 4504
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v4}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4505
    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->getProfileDBOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 4420
    .end local v3    # "editednumber":Ljava/lang/String;
    .end local v10    # "existNumber":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "isDeleted":Z
    .end local v14    # "isEdited":Z
    .end local v15    # "isInserted":Z
    .end local v16    # "mRawContactId":J
    .end local v18    # "number":Ljava/lang/String;
    .end local v21    # "state":I
    .end local v23    # "value":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 4515
    .end local v20    # "phoneValueDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v24    # "valuea":Lcom/android/contacts/model/EntityDelta;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment$EabSubscribeThread;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v2, v4, v0}, Lcom/sec/android/app/contacts/eab/EABContactsDBHelper;->applyBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 4517
    .end local v8    # "count":I
    .end local v11    # "i":I
    .end local v19    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_b
    const-string v4, "EAB-ContactEditorFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending single subscribe. Number Count - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_c

    .line 4520
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sendSubscribeForAddedNumber(Ljava/util/ArrayList;)V

    .line 4524
    :cond_c
    return-void

    .line 4469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
