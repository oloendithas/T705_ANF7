.class Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$8;
.super Ljava/lang/Object;
.source "GroupMemberBrowseListFragment.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->createRecipientListWidgetFromView(Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
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
    .line 1290
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$8;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

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
    .line 1294
    move-object v0, p3

    check-cast v0, Landroid/os/Bundle;

    .line 1295
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$8;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->addFrequentContactToGroup(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$1300(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Landroid/os/Bundle;)V

    .line 1298
    :cond_0
    return-void
.end method
