.class Lcom/android/contacts/list/ContactEntryListFragment$6;
.super Ljava/lang/Object;
.source "ContactEntryListFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactEntryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactEntryListFragment;)V
    .locals 0

    .prologue
    .line 1722
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment$6;, "Lcom/android/contacts/list/ContactEntryListFragment.6;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment$6;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment$6;, "Lcom/android/contacts/list/ContactEntryListFragment.6;"
    const/4 v3, 0x0

    .line 1725
    const/16 v0, 0xe5

    if-ne p2, v0, :cond_1

    .line 1733
    :cond_0
    :goto_0
    return v3

    .line 1728
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment$6;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment$6;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    # setter for: Lcom/android/contacts/list/ContactEntryListFragment;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->access$402(Lcom/android/contacts/list/ContactEntryListFragment;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 1729
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment$6;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    # getter for: Lcom/android/contacts/list/ContactEntryListFragment;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/contacts/list/ContactEntryListFragment;->access$400(Lcom/android/contacts/list/ContactEntryListFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment$6;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    # getter for: Lcom/android/contacts/list/ContactEntryListFragment;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/contacts/list/ContactEntryListFragment;->access$400(Lcom/android/contacts/list/ContactEntryListFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment$6;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    # getter for: Lcom/android/contacts/list/ContactEntryListFragment;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/contacts/list/ContactEntryListFragment;->access$400(Lcom/android/contacts/list/ContactEntryListFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment$6;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    # getter for: Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->access$500(Lcom/android/contacts/list/ContactEntryListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
