.class Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$1;
.super Ljava/lang/Object;
.source "GroupMemberBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->addNotAssignedHeaderView(Landroid/view/ViewGroup;)V
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
    .line 502
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/group/EmergencyServiceCreationDialogFragment;->show(Landroid/app/FragmentManager;)V

    .line 506
    return-void
.end method
