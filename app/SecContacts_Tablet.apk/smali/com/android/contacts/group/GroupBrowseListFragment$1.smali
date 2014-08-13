.class Lcom/android/contacts/group/GroupBrowseListFragment$1;
.super Landroid/os/Handler;
.source "GroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$1;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 219
    const-string v0, "GroupBrowseListFragment"

    const-string v1, "VR Start query after delay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$1;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 221
    const-string v0, "GroupBrowseListFragment"

    const-string v1, "activity is destroyed during delay. ignore this query. new query will start"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$1;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    # getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->startQuery()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$100(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    goto :goto_0
.end method
