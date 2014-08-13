.class Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupDetailFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 3204
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/PeopleActivity$1;

    .prologue
    .line 3204
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onAccountTypeUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "accountTypeString"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 3224
    return-void
.end method

.method public onAddMemberRequested()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 3250
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v4}, Lcom/android/contacts/activities/PeopleActivity;->access$1900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v0

    .line 3251
    .local v0, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v4}, Lcom/android/contacts/activities/PeopleActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v1

    .line 3252
    .local v1, "groupType":I
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    invoke-static {v4}, Lcom/android/contacts/activities/PeopleActivity;->access$4200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isAutoAdd()Z

    move-result v3

    .line 3253
    .local v3, "isAutoAdd":Z
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const-class v5, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3254
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3255
    const-string v4, "GroupInfo"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3257
    const-string v4, "AutoAdd"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3259
    if-ne v1, v6, :cond_0

    .line 3260
    const-string v4, "EditMode"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3267
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/16 v5, 0x5f

    invoke-virtual {v4, v2, v5}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3268
    return-void

    .line 3261
    :cond_0
    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    .line 3262
    const-string v4, "PeopleActivity"

    const-string v5, "AddMember : MODE_GROUP_MEMBER_ICE_ADD"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    const-string v4, "EditMode"

    const/16 v5, 0x12

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 3265
    :cond_1
    const-string v4, "EditMode"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onContactSelected(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 3241
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3246
    :goto_0
    return-void

    .line 3243
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3244
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "finishActivityOnUpSelected"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3245
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onEditRequested(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 3
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 3228
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const-class v2, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3229
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3230
    const-string v1, "GroupInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3231
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3232
    return-void
.end method

.method public onGroupSizeUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 3210
    return-void
.end method

.method public onGroupTitleUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 3217
    return-void
.end method
