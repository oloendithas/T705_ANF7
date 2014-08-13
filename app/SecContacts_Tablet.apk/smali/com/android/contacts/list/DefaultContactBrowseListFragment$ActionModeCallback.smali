.class public Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method protected constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .prologue
    .line 4634
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    .prologue
    .line 4634
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;)Lcom/android/contacts/list/ContactListFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;

    .prologue
    .line 4634
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;Lcom/android/contacts/list/ContactListFilter;)Lcom/android/contacts/list/ContactListFilter;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;
    .param p1, "x1"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 4634
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;Landroid/view/ActionMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 4634
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->deleteContact(Landroid/view/ActionMode;)V

    return-void
.end method

.method private deleteContact(Landroid/view/ActionMode;)V
    .locals 12
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v11, 0x1

    .line 4812
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-le v6, v11, :cond_1

    .line 4813
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0224

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4819
    .local v5, "title":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 4820
    .local v1, "findProfile":Z
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const v7, 0x7f0e023d

    invoke-virtual {v6, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4821
    .local v4, "message":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4823
    .local v0, "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 4824
    .local v3, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4825
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 4826
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4829
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4831
    const/4 v1, 0x1

    .line 4825
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4816
    .end local v0    # "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v1    # "findProfile":Z
    .end local v2    # "i":I
    .end local v3    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0223

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "title":Ljava/lang/String;
    goto :goto_0

    .line 4837
    .restart local v0    # "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v1    # "findProfile":Z
    .restart local v2    # "i":I
    .restart local v3    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v4    # "message":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4840
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4841
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 4845
    :cond_3
    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isDeleteConfirmPopupShowing:Z
    invoke-static {v11}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$902(Z)Z

    .line 4846
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->deleteDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->deleteDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4901
    :goto_3
    return-void

    .line 4849
    :cond_4
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v8, v8, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    new-instance v9, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$3;

    invoke-direct {v9, p0, v0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$3;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;Ljava/util/ArrayList;Landroid/view/ActionMode;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x1040000

    new-instance v9, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$2;

    invoke-direct {v9, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$2;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->deleteDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2102(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4899
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->deleteDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/app/AlertDialog;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v7, v7, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->dismisslistener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4900
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->deleteDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_3
.end method

.method private removeGroupMember(Landroid/view/ActionMode;)V
    .locals 13
    .param p1, "actionmode"    # Landroid/view/ActionMode;

    .prologue
    .line 4905
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 4906
    .local v9, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4907
    .local v6, "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4910
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v3, 0x7f0902f6

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    .line 4913
    .local v10, "mFragment":Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    if-eqz v10, :cond_2

    .line 4914
    invoke-virtual {v10}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getSelectedGroupInfo()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v1

    .line 4915
    .local v1, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v7

    .line 4917
    .local v7, "groupType":I
    const/4 v0, 0x3

    if-ne v7, v0, :cond_0

    .line 4918
    const/4 v5, 0x5

    .line 4923
    .local v5, "mode":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4924
    .local v12, "size":I
    new-array v2, v12, [J

    .line 4925
    .local v2, "membersArray":[J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v12, :cond_1

    .line 4926
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v2, v8

    .line 4925
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4920
    .end local v2    # "membersArray":[J
    .end local v5    # "mode":I
    .end local v8    # "i":I
    .end local v12    # "size":I
    :cond_0
    const/4 v5, 0x4

    .restart local v5    # "mode":I
    goto :goto_0

    .line 4929
    .restart local v2    # "membersArray":[J
    .restart local v8    # "i":I
    .restart local v12    # "size":I
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "editMemberCompleted"

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactSaveService;->createMemberUpdateOnlyIntent(Landroid/content/Context;Lcom/sec/android/app/contacts/group/GroupInfo;[JLjava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .line 4931
    .local v11, "saveIntent":Landroid/content/Intent;
    const v0, 0x7f0e0256

    invoke-virtual {v10, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showProgress(I)V

    .line 4932
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v11}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4934
    .end local v1    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v2    # "membersArray":[J
    .end local v5    # "mode":I
    .end local v7    # "groupType":I
    .end local v8    # "i":I
    .end local v11    # "saveIntent":Landroid/content/Intent;
    .end local v12    # "size":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 4935
    return-void
.end method

.method private toPrimitives(Ljava/util/ArrayList;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 5152
    .local p1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [J

    .line 5153
    .local v1, "primitives":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 5154
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 5153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5156
    :cond_0
    return-object v1
.end method

.method private updateSelectionMenu()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4647
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 4649
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0e03e3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4654
    .local v1, "format":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/list/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 4661
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v2, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 4662
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # invokes: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSelectAllState()Z
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2, v0}, Lcom/sec/android/app/contacts/list/SelectionMenu;->updateSelectAllMode(ZI)V

    .line 4666
    :goto_1
    return-void

    :cond_0
    move v2, v4

    .line 4662
    goto :goto_0

    .line 4664
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/SelectionMenu;->clearPopupList()V

    goto :goto_1
.end method


# virtual methods
.method public deselectAll()V
    .locals 1

    .prologue
    .line 5141
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5142
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5143
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->clearCheckedids()V

    .line 5144
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->notifyDataSetChanged()V

    .line 5146
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 5147
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 5148
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 25
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 4672
    const-wide/16 v5, -0x1

    .line 4674
    .local v5, "contactId":J
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    .line 4807
    :goto_0
    const/16 v21, 0x1

    :goto_1
    return v21

    .line 4676
    :sswitch_0
    const/4 v14, 0x0

    .line 4677
    .local v14, "isGroupTab":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 4678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    const/4 v14, 0x1

    .line 4681
    :cond_0
    :goto_2
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v21

    const v22, 0x7f0902f6

    invoke-virtual/range {v21 .. v22}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v21, :cond_2

    .line 4683
    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->removeGroupMember(Landroid/view/ActionMode;)V

    goto :goto_0

    .line 4678
    :cond_1
    const/4 v14, 0x0

    goto :goto_2

    .line 4685
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->deleteContact(Landroid/view/ActionMode;)V

    goto :goto_0

    .line 4689
    .end local v14    # "isGroupTab":Z
    :sswitch_1
    new-instance v9, Lcom/android/contacts/preference/ContactsPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 4690
    .local v9, "contactsPreferences":Lcom/android/contacts/preference/ContactsPreferences;
    invoke-virtual {v9}, Lcom/android/contacts/preference/ContactsPreferences;->getSendContactType()I

    move-result v18

    .line 4692
    .local v18, "sendType":I
    const/4 v2, 0x0

    .line 4694
    .local v2, "bShowWarning":Z
    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 4695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    const/16 v22, 0xfa

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    .line 4696
    const/4 v2, 0x1

    .line 4702
    :cond_3
    :goto_3
    if-eqz v2, :cond_6

    .line 4703
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4705
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 4706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0e0511

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0xfa

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0xfa

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 4716
    .local v19, "toastMessage":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4717
    const v21, 0x104000a

    new-instance v22, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$1;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;)V

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4723
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 4698
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v19    # "toastMessage":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    const/16 v22, 0xbb8

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 4699
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 4711
    .restart local v3    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0e0511

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0xbb8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0xbb8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "toastMessage":Ljava/lang/String;
    goto :goto_4

    .line 4725
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v19    # "toastMessage":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showShareViaList()V

    goto/16 :goto_0

    .line 4729
    .end local v2    # "bShowWarning":Z
    .end local v9    # "contactsPreferences":Lcom/android/contacts/preference/ContactsPreferences;
    .end local v18    # "sendType":I
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 4730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 4731
    .local v10, "idIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 4732
    .local v16, "lookupKeyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 4733
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4734
    .local v15, "lookupKey":Ljava/lang/String;
    invoke-static {v5, v6, v15}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 4735
    .local v20, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    # invokes: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createLauncherShortcutWithContact(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/net/Uri;)V

    .line 4737
    .end local v10    # "idIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v15    # "lookupKey":Ljava/lang/String;
    .end local v16    # "lookupKeyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v20    # "uri":Landroid/net/Uri;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    .line 4741
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v4

    .line 4743
    .local v4, "bundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    const/16 v22, 0x64

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_9

    .line 4744
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "bundle":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4745
    .restart local v4    # "bundle":Landroid/os/Bundle;
    const-string v21, "action"

    const-string v22, "MoveTo"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4746
    const-string v21, "src"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4747
    const-string v21, "target"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4748
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4749
    .local v8, "contactIds2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 4750
    .local v12, "ids2":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4751
    const-string v21, "contact_ids"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->toPrimitives(Ljava/util/ArrayList;)[J

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 4752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Landroid/os/PersonaManager;->exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4787
    .end local v8    # "contactIds2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v12    # "ids2":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_8
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    .line 4756
    :cond_9
    const-string v21, "personaIds"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v17

    .line 4760
    .local v17, "personaIds":[I
    if-eqz v17, :cond_8

    .line 4761
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 4765
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "bundle":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4766
    .restart local v4    # "bundle":Landroid/os/Bundle;
    const-string v21, "action"

    const-string v22, "MoveTo"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4767
    const-string v21, "src"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4768
    const-string v21, "target"

    const/16 v22, 0x0

    aget v22, v17, v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4769
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4770
    .local v7, "contactIds1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 4771
    .local v11, "ids1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4772
    const-string v21, "contact_ids"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->toPrimitives(Ljava/util/ArrayList;)[J

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 4773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Landroid/os/PersonaManager;->exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_5

    .line 4774
    .end local v7    # "contactIds1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v11    # "ids1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_a
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 4778
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4779
    .restart local v7    # "contactIds1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 4780
    .restart local v11    # "ids1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4781
    const-string v21, "contact_ids"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->toPrimitives(Ljava/util/ArrayList;)[J

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 4782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_5

    .line 4791
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v7    # "contactIds1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v11    # "ids1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v17    # "personaIds":[I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 4792
    .restart local v10    # "idIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 4793
    .restart local v16    # "lookupKeyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 4794
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4795
    .restart local v15    # "lookupKey":Ljava/lang/String;
    invoke-static {v5, v6, v15}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 4796
    .restart local v20    # "uri":Landroid/net/Uri;
    new-instance v13, Landroid/content/Intent;

    const-string v21, "com.android.contacts.action.SEND_INFO"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4797
    .local v13, "intentSend":Landroid/content/Intent;
    const-string v21, "CONTACT_URI"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4798
    const-string v21, "mode"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4799
    const-string v21, "direct_launch"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    .line 4801
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 4674
    :sswitch_data_0
    .sparse-switch
        0x7f0904e7 -> :sswitch_4
        0x7f0904f5 -> :sswitch_0
        0x7f09051a -> :sswitch_1
        0x7f09051b -> :sswitch_2
        0x7f09052d -> :sswitch_3
    .end sparse-switch
.end method

.method public onContactSelected(IJ)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 4938
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 4939
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 4940
    .local v1, "contactUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v2

    .line 4941
    .local v2, "lookupKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4942
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v3, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/ContactListAdapter;->isPreLoadContact(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4943
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 4944
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4946
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4947
    const/4 v3, 0x0

    invoke-virtual {v0, p2, p3, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheck(JZ)V

    .line 4967
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v3, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListAdapter;->notifyDataSetChanged()V

    .line 4969
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V

    .line 4972
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_2

    .line 4974
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_2

    .line 4975
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 4977
    :cond_2
    return-void

    .line 4950
    :cond_3
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->needToDisabled(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4951
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v3, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/list/ContactListAdapter;->isPreLoadContact(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4952
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_4

    .line 4953
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2002(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 4955
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 4957
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4959
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4960
    const/4 v3, 0x1

    invoke-virtual {v0, p2, p3, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheck(JZ)V

    goto/16 :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4981
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->registerBezelListener()V

    .line 4982
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 4983
    .local v1, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f12001f

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 4985
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040081

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 4987
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0901ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$4;

    invoke-direct {v3, p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback$4;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4996
    new-instance v3, Lcom/sec/android/app/contacts/list/SelectionMenu;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v4, v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v5, 0x7f0901ee

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-direct {v3, v4, v2, p0}, Lcom/sec/android/app/contacts/list/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;)V

    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    .line 4998
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 4999
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-boolean v6, v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsSelectionMode:Z

    .line 5000
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v2, :cond_0

    .line 5001
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/PeopleActivity;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v3, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsSelectionMode:Z

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->setSelectionActionMode(Z)V

    .line 5003
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setMultiSelectEnabled(Z)V

    .line 5006
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getDirectorySearchMode()I

    move-result v2

    if-eqz v2, :cond_1

    .line 5007
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getDirectorySearchMode()I

    move-result v3

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mRestoreDirectorySearchMode:I
    invoke-static {v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2202(Lcom/android/contacts/list/DefaultContactBrowseListFragment;I)I

    .line 5008
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    .line 5009
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # invokes: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->initializeSearchView()V
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    .line 5010
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeSelectedUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 5011
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeSelectedUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->viewContact(Landroid/net/Uri;)V

    .line 5015
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 5016
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5017
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 5018
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/16 v3, -0x11

    invoke-static {v3}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 5021
    :cond_2
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->setMultiSelectionMode(Z)V

    .line 5022
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->setMultiSelectEnabled(Z)V

    .line 5023
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->setSelectedLookupKeys(Ljava/util/Collection;)V

    .line 5024
    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->notifyDataSetChanged()V

    .line 5025
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V

    .line 5026
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 5027
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setLongClickable(Z)V

    .line 5029
    return v6
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/ActionMode;

    .prologue
    .line 5034
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->doDestroyActionMode()V

    .line 5035
    return-void
.end method

.method public onPopupItemClick(I)Z
    .locals 1
    .param p1, "itemId"    # I

    .prologue
    .line 5099
    const v0, 0x7f09001e

    if-ne p1, v0, :cond_1

    .line 5100
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->selectAll()V

    .line 5104
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V

    .line 5105
    const/4 v0, 0x0

    return v0

    .line 5101
    :cond_1
    const v0, 0x7f09001f

    if-ne p1, v0, :cond_0

    .line 5102
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->deselectAll()V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 10
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 5039
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    const/4 v5, 0x1

    .line 5040
    .local v5, "isSelectedOneItem":Z
    :goto_0
    const/4 v6, 0x0

    .line 5041
    .local v6, "isUserProfile":Z
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 5042
    .local v0, "contactId":Ljava/lang/Long;
    if-eqz v5, :cond_0

    .line 5043
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5044
    .local v2, "idIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "contactId":Ljava/lang/Long;
    check-cast v0, Ljava/lang/Long;

    .line 5045
    .restart local v0    # "contactId":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/contacts/ContactsUtils;->isUndeletableProfile(J)Z

    move-result v6

    .line 5048
    .end local v2    # "idIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    const/4 v4, 0x0

    .line 5049
    .local v4, "isNonGroupTab":Z
    const/4 v3, 0x0

    .line 5050
    .local v3, "isAllTab":Z
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v7, :cond_2

    .line 5051
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v7}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v7}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v7}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 5054
    :goto_1
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v7}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v7}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    const/4 v3, 0x1

    .line 5057
    :cond_2
    :goto_2
    const v7, 0x7f09051b

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-eqz v5, :cond_6

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz v4, :cond_6

    if-nez v6, :cond_6

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v7, v7, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMultiSelectionDeleteMode:Z

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v7, v7, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x1

    :goto_3
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5065
    const v7, 0x7f09051a

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_7

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v4, :cond_7

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v7, v7, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMultiSelectionDeleteMode:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v7, 0x1

    :goto_4
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5071
    const v7, 0x7f0904e7

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-eqz v5, :cond_8

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v3, :cond_8

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v7, v7, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMultiSelectionDeleteMode:Z

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v7, v7, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    :goto_5
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5078
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 5079
    const v7, 0x7f0904f5

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5080
    const v7, 0x7f09052d

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    const/4 v9, 0x1

    if-lt v7, v9, :cond_9

    const/4 v7, 0x1

    :goto_6
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5094
    :goto_7
    const/4 v7, 0x0

    return v7

    .line 5039
    .end local v0    # "contactId":Ljava/lang/Long;
    .end local v3    # "isAllTab":Z
    .end local v4    # "isNonGroupTab":Z
    .end local v5    # "isSelectedOneItem":Z
    .end local v6    # "isUserProfile":Z
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 5051
    .restart local v0    # "contactId":Ljava/lang/Long;
    .restart local v3    # "isAllTab":Z
    .restart local v4    # "isNonGroupTab":Z
    .restart local v5    # "isSelectedOneItem":Z
    .restart local v6    # "isUserProfile":Z
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 5054
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 5057
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 5065
    :cond_7
    const/4 v7, 0x0

    goto :goto_4

    .line 5071
    :cond_8
    const/4 v7, 0x0

    goto :goto_5

    .line 5080
    :cond_9
    const/4 v7, 0x0

    goto :goto_6

    .line 5082
    :cond_a
    const v7, 0x7f09052d

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5083
    const v7, 0x7f0904f5

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 5084
    .local v1, "deleteMenu":Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-boolean v7, v7, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMultiSelectionDeleteMode:Z

    if-eqz v7, :cond_c

    .line 5085
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 5086
    const v7, 0x7f0e0061

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 5087
    const/4 v7, 0x6

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5089
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_b

    const/4 v7, 0x1

    :goto_8
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    goto :goto_8

    .line 5091
    :cond_c
    if-nez v5, :cond_d

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_e

    :cond_d
    const/4 v7, 0x1

    :goto_9
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    :cond_e
    const/4 v7, 0x0

    goto :goto_9
.end method

.method public selectAll()V
    .locals 8

    .prologue
    .line 5109
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 5110
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 5113
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v6, v6, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v3

    .line 5115
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "position":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 5116
    invoke-virtual {v0, v5}, Lcom/android/contacts/list/DefaultContactListAdapter;->needToDisabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5115
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5119
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v6, v6, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v6, v5}, Lcom/android/contacts/list/ContactListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v4

    .line 5120
    .local v4, "lookupKey":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v6, v6, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v6, v5}, Lcom/android/contacts/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 5122
    .local v1, "contactId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-eqz v6, :cond_0

    .line 5124
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v6, v6, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v6, v5}, Lcom/android/contacts/list/ContactListAdapter;->isPreLoadContact(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5125
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_2

    .line 5126
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v6, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2002(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 5127
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 5129
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5131
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5133
    .end local v1    # "contactId":J
    .end local v4    # "lookupKey":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v6, v6, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/list/ContactListAdapter;->notifyDataSetChanged()V

    .line 5134
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v6, v6, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_5

    .line 5135
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v6, v6, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v6}, Landroid/view/ActionMode;->invalidate()V

    .line 5138
    :cond_5
    return-void
.end method
