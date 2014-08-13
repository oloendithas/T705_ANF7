.class Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$3;
.super Ljava/lang/Object;
.source "FavoriteInterfaceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setupDropdownActionBar()Landroid/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 349
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$000(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$000(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$100(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    const v2, 0x7f0e0508

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;->onDeSelectAllClicked()V

    .line 358
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$100(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    const v2, 0x7f0e034f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;->onSelectAllClicked()V

    goto :goto_1
.end method
