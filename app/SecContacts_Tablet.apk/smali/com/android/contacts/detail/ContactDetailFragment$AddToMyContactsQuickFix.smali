.class Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;
.super Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddToMyContactsQuickFix"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 1

    .prologue
    .line 6348
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p2, "x1"    # Lcom/android/contacts/detail/ContactDetailFragment$1;

    .prologue
    .line 6348
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 25

    .prologue
    .line 6416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v3

    if-nez v3, :cond_1

    .line 6454
    :cond_0
    :goto_0
    return-void

    .line 6417
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getGroupMetaData()Ljava/util/List;

    move-result-object v5

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->getDefaultGroupId(Ljava/util/List;)J
    invoke-static {v3, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$5300(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/List;)J

    move-result-wide v17

    .line 6420
    .local v17, "defaultGroupId":J
    const-wide/16 v5, -0x1

    cmp-long v3, v17, v5

    if-eqz v3, :cond_0

    .line 6423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/model/EntityDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v4

    .line 6425
    .local v4, "contactDeltaList":Lcom/android/contacts/model/EntityDeltaList;
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/contacts/model/EntityDelta;

    .line 6427
    .local v22, "rawContactEntityDelta":Lcom/android/contacts/model/EntityDelta;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v15

    .line 6428
    .local v15, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v24

    .line 6429
    .local v24, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v3, "account_type"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 6430
    .local v14, "accountType":Ljava/lang/String;
    const-string v3, "data_set"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 6431
    .local v16, "dataSet":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v23

    .line 6432
    .local v23, "type":Lcom/android/contacts/model/AccountType;
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v20

    .line 6434
    .local v20, "groupMembershipKind":Lcom/android/contacts/model/DataKind;
    if-eqz v20, :cond_0

    .line 6435
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v19

    .line 6437
    .local v19, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v3, "data1"

    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    .line 6441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "android.intent.action.VIEW"

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/contacts/detail/ContactDetailFragment;->access$5400(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mCustomVibrationUri:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2500(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2400(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v3 .. v13}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/EntityDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    .line 6445
    .local v21, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 6447
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "saveCompleted"

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/contacts/detail/ContactDetailFragment;->access$5400(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mCustomVibrationUri:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2500(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2400(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v3 .. v13}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/EntityDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    .line 6450
    .restart local v21    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6409
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isApplicable()Z
    .locals 17

    .prologue
    .line 6352
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v15}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v15}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_0
    const/4 v15, 0x0

    .line 6403
    :goto_0
    return v15

    .line 6355
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v15}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v15, 0x0

    goto :goto_0

    .line 6358
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v15}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v15, 0x0

    goto :goto_0

    .line 6361
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v15}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    const/4 v15, 0x0

    goto :goto_0

    .line 6364
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v15}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/contacts/ContactLoader$Result;->getGroupMetaData()Ljava/util/List;

    move-result-object v7

    .line 6367
    .local v7, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/GroupMetaData;>;"
    if-nez v7, :cond_5

    const/4 v15, 0x0

    goto :goto_0

    .line 6370
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->getDefaultGroupId(Ljava/util/List;)J
    invoke-static {v15, v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$5300(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/List;)J

    move-result-wide v4

    .line 6371
    .local v4, "defaultGroupId":J
    const-wide/16 v15, -0x1

    cmp-long v15, v4, v15

    if-nez v15, :cond_6

    const/4 v15, 0x0

    goto :goto_0

    .line 6373
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v15}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Entity;

    .line 6374
    .local v11, "rawContactEntity":Landroid/content/Entity;
    invoke-virtual {v11}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v12

    .line 6375
    .local v12, "rawValues":Landroid/content/ContentValues;
    const-string v15, "account_type"

    invoke-virtual {v12, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6376
    .local v1, "accountType":Ljava/lang/String;
    const-string v15, "data_set"

    invoke-virtual {v12, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6377
    .local v3, "dataSet":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    .line 6379
    .local v2, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v14

    .line 6382
    .local v14, "type":Lcom/android/contacts/model/AccountType;
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v15, "com.google"

    iget-object v0, v14, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 6385
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 6389
    :cond_8
    const/4 v9, 0x0

    .line 6390
    .local v9, "isInDefaultGroup":Z
    invoke-virtual {v11}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Entity$NamedContentValues;

    .line 6391
    .local v13, "subValue":Landroid/content/Entity$NamedContentValues;
    iget-object v15, v13, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v16, "mimetype"

    invoke-virtual/range {v15 .. v16}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6393
    .local v10, "mimeType":Ljava/lang/String;
    const-string v15, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 6394
    iget-object v15, v13, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v16, "data1"

    invoke-virtual/range {v15 .. v16}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 6396
    .local v6, "groupId":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v15, v15, v4

    if-nez v15, :cond_9

    .line 6397
    const/4 v9, 0x1

    .line 6403
    .end local v6    # "groupId":Ljava/lang/Long;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v13    # "subValue":Landroid/content/Entity$NamedContentValues;
    :cond_a
    if-nez v9, :cond_b

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_0
.end method
