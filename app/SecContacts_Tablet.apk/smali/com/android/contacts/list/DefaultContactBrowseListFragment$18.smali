.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$18;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showShareViaList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

.field final synthetic val$rList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 4602
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$18;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object p2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$18;->val$rList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 4606
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$18;->val$rList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4607
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$18;->val$rList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4609
    .local v0, "className":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$18;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # invokes: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getShareIntent()Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Intent;

    move-result-object v1

    .line 4610
    .local v1, "mShareIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4611
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$18;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->finishActionMode()V

    .line 4612
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$18;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSharePopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 4614
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$18;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4615
    return-void
.end method
