.class Lcom/android/contacts/editor/ContactEditorFragment$11$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

.field final synthetic val$adapter:Lcom/android/contacts/util/AccountsListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$11;Lcom/android/contacts/util/AccountsListAdapter;)V
    .locals 0

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 2031
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2032
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 2033
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v3, 0x0

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1002(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;

    .line 2035
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v1

    .line 2036
    .local v1, "newAccount":Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2051
    :goto_0
    return-void

    .line 2042
    :cond_1
    const-string v2, "com.osp.app.signin"

    iget-object v3, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2043
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.contacts.action.samsungaccountvalidationcheck"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2044
    .local v0, "checkIntent":Landroid/content/Intent;
    const-string v2, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2045
    const-string v2, "from"

    const-string v3, "editor"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2046
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/16 v3, 0xb

    invoke-virtual {v2, v0, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2050
    .end local v0    # "checkIntent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v3, v3, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$11$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$11;

    iget-object v4, v4, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->changeAccount(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    invoke-static {v2, v3, v4, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1500(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0
.end method
