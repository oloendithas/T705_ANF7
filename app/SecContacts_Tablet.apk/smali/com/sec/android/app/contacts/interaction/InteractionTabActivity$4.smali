.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setupDropdownActionBar()Landroid/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 753
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    if-nez v1, :cond_0

    .line 773
    :goto_0
    return-void

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 758
    const/4 v0, 0x0

    .line 759
    .local v0, "lSelectDeselectListener":Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFragmentAtForeGround:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1100(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFragmentAtForeGround:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1100(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;

    if-eqz v1, :cond_1

    .line 761
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFragmentAtForeGround:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1100(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/app/Fragment;

    move-result-object v0

    .end local v0    # "lSelectDeselectListener":Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;
    check-cast v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;

    .line 763
    .restart local v0    # "lSelectDeselectListener":Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    const v3, 0x7f0e0508

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 764
    if-eqz v0, :cond_2

    .line 765
    invoke-interface {v0}, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;->onDeSelectAllClicked()V

    .line 772
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 767
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    const v3, 0x7f0e034f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 768
    if-eqz v0, :cond_2

    .line 769
    invoke-interface {v0}, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;->onSelectAllClicked()V

    goto :goto_1
.end method
