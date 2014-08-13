.class Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter$1;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->createMenuWidgetFromView(Landroid/view/View;Landroid/database/Cursor;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

.field final synthetic val$groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field final synthetic val$hasMember:Z


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;ZLcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0

    .prologue
    .line 2226
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter$1;->this$1:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    iput-boolean p2, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter$1;->val$hasMember:Z

    iput-object p3, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter$1;->val$groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "itemIndex"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 2230
    packed-switch p2, :pswitch_data_0

    .line 2248
    :goto_0
    return-void

    .line 2233
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter$1;->val$hasMember:Z

    if-eqz v0, :cond_0

    .line 2234
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter$1;->this$1:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter$1;->val$groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->sendMessage(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    invoke-static {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$2400(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Lcom/sec/android/app/contacts/group/GroupInfo;)V

    goto :goto_0

    .line 2236
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter$1;->this$1:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter$1;->val$groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->editGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    invoke-static {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$2500(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Lcom/sec/android/app/contacts/group/GroupInfo;)V

    goto :goto_0

    .line 2240
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter$1;->this$1:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter$1;->val$groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->sendEmail(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    invoke-static {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$2600(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Lcom/sec/android/app/contacts/group/GroupInfo;)V

    goto :goto_0

    .line 2243
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter$1;->this$1:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter$1;->val$groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    # invokes: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->editGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    invoke-static {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$2500(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;Lcom/sec/android/app/contacts/group/GroupInfo;)V

    goto :goto_0

    .line 2230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
