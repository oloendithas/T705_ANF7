.class final Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GroupBrowserActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 3175
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/PeopleActivity$1;

    .prologue
    .line 3175
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onCurrentGroupChanged()V
    .locals 1

    .prologue
    .line 3200
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$4200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->finishSelectionMode()V

    .line 3201
    return-void
.end method

.method public onUpdateDeleteGroupMemberOptionMenu(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 3194
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # setter for: Lcom/android/contacts/activities/PeopleActivity;->mVisibilityOfDeleteContactsMenu:Z
    invoke-static {v0, p1}, Lcom/android/contacts/activities/PeopleActivity;->access$4102(Lcom/android/contacts/activities/PeopleActivity;Z)Z

    .line 3195
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 3196
    return-void
.end method

.method public onViewGroupAction(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V
    .locals 3
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;
    .param p2, "isAutoAdd"    # Z

    .prologue
    .line 3179
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$2700(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3180
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->setupGroupDetailFragment(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V
    invoke-static {v1, p1, p2}, Lcom/android/contacts/activities/PeopleActivity;->access$4000(Lcom/android/contacts/activities/PeopleActivity;Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    .line 3190
    :goto_0
    return-void

    .line 3183
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const-class v2, Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3184
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "GroupInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3186
    const-string v1, "AutoAdd"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3188
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
