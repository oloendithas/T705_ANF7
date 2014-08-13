.class final Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;
.super Ljava/lang/Object;
.source "InteractionGroupSelectionActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InteractionGroupMemberPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;

    .prologue
    .line 826
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onAllDataDeleted()V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setDoneButtonClickable(Z)V

    .line 933
    return-void
.end method

.method public onAllDataSelected(IZ)V
    .locals 1
    .param p1, "selectedCount"    # I
    .param p2, "isAll"    # Z

    .prologue
    .line 981
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCountInSearchMode:I
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$202(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;I)I

    .line 982
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsAllSelected:Z
    invoke-static {v0, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$302(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Z)Z

    .line 983
    return-void
.end method

.method public onCancelAction()V
    .locals 0

    .prologue
    .line 918
    return-void
.end method

.method public onInteractionPickerAction(Landroid/net/Uri;)V
    .locals 1
    .param p1, "dataUri"    # Landroid/net/Uri;

    .prologue
    .line 905
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickPhoneResult(Landroid/net/Uri;)V

    .line 906
    return-void
.end method

.method public onOneDataInputed()V
    .locals 2

    .prologue
    .line 937
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setDoneButtonClickable(Z)V

    .line 938
    return-void
.end method

.method public onPickContactAction(Ljava/util/HashMap;)V
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
    .line 912
    .local p1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onPickDataAction(Ljava/util/HashMap;)V
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
    .line 928
    .local p1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onPickGroupDataAction(Ljava/util/HashMap;)V
    .locals 4
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
    .line 943
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "toolitem"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 944
    .local v0, "toolItem":I
    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    .line 948
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->sendActionIntent(Ljava/util/HashMap;)V

    .line 953
    :goto_0
    return-void

    .line 951
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickerResult(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public onPickSpeedDialAction(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 959
    return-void
.end method

.method public onPickSpeedDialAction(Landroid/net/Uri;J)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataid"    # J

    .prologue
    .line 965
    return-void
.end method

.method public onRecentListAction(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 922
    return-void
.end method

.method public onRevertAction()V
    .locals 0

    .prologue
    .line 901
    return-void
.end method

.method public onSelected(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 969
    const-string v0, "InteractionGroupSelectionActivity"

    const-string v1, "onSelected"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$102(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;I)I

    .line 971
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$602(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Z)Z

    .line 972
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsTablet:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$700(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$900(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)I

    move-result v2

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->actionbarTitle(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$800(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setDoneButtonClickable(Z)V

    .line 976
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 977
    return-void

    .line 971
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelectedAction(Ljava/util/ArrayList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p1, "rgData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v23, "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v4}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 837
    .local v2, "cr":Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_8

    .line 838
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 839
    .local v3, "uri":Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 841
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 896
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v12    # "cursor":Landroid/database/Cursor;
    :goto_1
    return-void

    .line 845
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :cond_0
    const-string v4, "_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 847
    .local v17, "ididx":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 848
    .local v22, "result":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 850
    .local v16, "id":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 851
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 852
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    const/16 v4, 0x3b

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 855
    const/4 v11, 0x0

    .line 856
    .local v11, "bhasPhone":Z
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "contact_id =?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v16, v8, v4

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 858
    .local v21, "phonecursor":Landroid/database/Cursor;
    :cond_2
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 859
    const/4 v11, 0x1

    .line 860
    const-string v4, "data1"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 861
    .local v20, "numidx":I
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 863
    .local v19, "num":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    if-eqz v19, :cond_2

    .line 867
    .end local v19    # "num":Ljava/lang/String;
    .end local v20    # "numidx":I
    :cond_3
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 869
    if-nez v11, :cond_1

    .line 870
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "contact_id =?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v16, v8, v4

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 871
    .local v10, "Emailcursor":Landroid/database/Cursor;
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 872
    const-string v4, "data1"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 873
    .local v14, "emailidx":I
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 875
    .local v13, "email":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    if-eqz v13, :cond_4

    .line 880
    .end local v13    # "email":Ljava/lang/String;
    .end local v14    # "emailidx":I
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 884
    .end local v10    # "Emailcursor":Landroid/database/Cursor;
    .end local v11    # "bhasPhone":Z
    .end local v21    # "phonecursor":Landroid/database/Cursor;
    :cond_6
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    if-eqz v12, :cond_7

    .line 887
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 837
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 891
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v16    # "id":Ljava/lang/String;
    .end local v17    # "ididx":I
    .end local v22    # "result":Ljava/lang/StringBuilder;
    :cond_8
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 892
    .local v18, "intent":Landroid/content/Intent;
    const-string v4, "result"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    const/4 v5, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1
.end method
