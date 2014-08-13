.class Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$4;
.super Ljava/lang/Object;
.source "GroupMemberBrowseListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->createCustomSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 597
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 598
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 599
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->requestSearchViewFocus(Landroid/app/Activity;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$300(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Landroid/app/Activity;)V

    .line 601
    :cond_0
    return-void
.end method
