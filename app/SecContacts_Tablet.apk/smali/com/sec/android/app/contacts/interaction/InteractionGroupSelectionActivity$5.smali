.class Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$5;
.super Ljava/lang/Object;
.source "InteractionGroupSelectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->actionbarsetup()Landroid/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

.field final synthetic val$mItems:Ljava/util/ArrayList;

.field final synthetic val$mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Landroid/widget/ListPopupWindow;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$5;->val$mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    iput-object p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$5;->val$mItems:Ljava/util/ArrayList;

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
    .line 426
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$5;->val$mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$5;->val$mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$5;->val$mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    const v2, 0x7f0e0508

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onDeSelectAllClicked()V

    .line 436
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$5;->val$mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    const v2, 0x7f0e034f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onSelectAllClicked()V

    goto :goto_1
.end method
