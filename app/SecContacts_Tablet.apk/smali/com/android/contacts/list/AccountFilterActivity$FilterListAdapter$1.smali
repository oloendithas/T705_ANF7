.class Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter$1;
.super Ljava/lang/Object;
.source "AccountFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;

.field final synthetic val$view:Lcom/android/contacts/list/ContactListFilterView;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;Lcom/android/contacts/list/ContactListFilterView;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter$1;->this$0:Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;

    iput-object p2, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter$1;->val$view:Lcom/android/contacts/list/ContactListFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 305
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter$1;->val$view:Lcom/android/contacts/list/ContactListFilterView;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 306
    .local v0, "filter":Lcom/android/contacts/list/ContactListFilter;
    if-nez v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 308
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 309
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "contactListFilter"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 310
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter$1;->this$0:Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;

    # getter for: Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->access$500(Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/AccountFilterActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 311
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter$1;->this$0:Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;

    # getter for: Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->access$500(Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/AccountFilterActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
