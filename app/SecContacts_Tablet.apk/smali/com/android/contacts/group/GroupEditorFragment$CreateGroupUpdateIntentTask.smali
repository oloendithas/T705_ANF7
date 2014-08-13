.class public Lcom/android/contacts/group/GroupEditorFragment$CreateGroupUpdateIntentTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "GroupEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateGroupUpdateIntentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<[J>;",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 1622
    invoke-direct {p0, p1}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1623
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 1618
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [Ljava/util/ArrayList;

    .end local p2    # "x1":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupEditorFragment$CreateGroupUpdateIntentTask;->doInBackground(Landroid/app/Activity;[Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Landroid/app/Activity;[Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "target"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<[J>;"
        }
    .end annotation

    .prologue
    .line 1639
    .local p2, "params":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v8, 0x0

    aget-object v7, p2, v8

    .line 1640
    .local v7, "original":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v8, 0x1

    aget-object v6, p2, v8

    .line 1641
    .local v6, "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1642
    .local v3, "memberToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1651
    .local v4, "memberToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1652
    .local v1, "id":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1653
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1658
    .end local v1    # "id":J
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1659
    .restart local v1    # "id":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1660
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1663
    .end local v1    # "id":J
    :cond_3
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1666
    .local v5, "membersToAddRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[J>;"
    # invokes: Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J
    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$1700(Ljava/util/List;)[J

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1667
    # invokes: Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J
    invoke-static {v4}, Lcom/android/contacts/group/GroupEditorFragment;->access$1700(Ljava/util/List;)[J

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    return-object v5
.end method

.method protected onPostExecute(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 15
    .param p1, "target"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<[J>;)V"
        }
    .end annotation

    .prologue
    .line 1675
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[J>;"
    move-object/from16 v12, p1

    .line 1677
    .local v12, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v12, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v12, v1}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 1679
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v7, 0x7f0902fa

    invoke-virtual {v1, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/group/GroupEditorFragment;

    .line 1682
    .local v13, "fragment":Lcom/android/contacts/group/GroupEditorFragment;
    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mIsSystemGroup:Z
    invoke-static {v13}, Lcom/android/contacts/group/GroupEditorFragment;->access$1800(Lcom/android/contacts/group/GroupEditorFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1683
    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-static {v13}, Lcom/android/contacts/group/GroupEditorFragment;->access$1200(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1687
    .local v3, "label":Ljava/lang/String;
    :goto_0
    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mSelectedGroups:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/contacts/group/GroupEditorFragment;->access$2000(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1688
    .local v2, "selectedGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/group/GroupInfo;>;"
    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/contacts/group/GroupEditorFragment;->access$2100(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v4

    .line 1689
    .local v4, "ringTone":Ljava/lang/String;
    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mCustomMessageAlert:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/contacts/group/GroupEditorFragment;->access$2200(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v5

    .line 1690
    .local v5, "messageAlert":Ljava/lang/String;
    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mCustomVibration:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/contacts/group/GroupEditorFragment;->access$300(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v6

    .line 1691
    .local v6, "vibration":Ljava/lang/String;
    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mMode:I
    invoke-static {v13}, Lcom/android/contacts/group/GroupEditorFragment;->access$1100(Lcom/android/contacts/group/GroupEditorFragment;)I

    move-result v11

    .line 1693
    .local v11, "mode":I
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "saveCompleted"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v11}, Lcom/android/contacts/ContactSaveService;->createGroupUpdateIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[JLjava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    .line 1697
    .local v14, "saveIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1699
    return-void

    .line 1685
    .end local v2    # "selectedGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/group/GroupInfo;>;"
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "ringTone":Ljava/lang/String;
    .end local v5    # "messageAlert":Ljava/lang/String;
    .end local v6    # "vibration":Ljava/lang/String;
    .end local v11    # "mode":I
    .end local v14    # "saveIntent":Landroid/content/Intent;
    :cond_0
    # invokes: Lcom/android/contacts/group/GroupEditorFragment;->getUpdatedName()Ljava/lang/String;
    invoke-static {v13}, Lcom/android/contacts/group/GroupEditorFragment;->access$1900(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1618
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupEditorFragment$CreateGroupUpdateIntentTask;->onPostExecute(Landroid/app/Activity;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPreExecute(Landroid/app/Activity;)V
    .locals 3
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 1628
    move-object v0, p1

    .line 1632
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1633
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1618
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$CreateGroupUpdateIntentTask;->onPreExecute(Landroid/app/Activity;)V

    return-void
.end method
