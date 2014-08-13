.class Lcom/android/contacts/util/AccountsListAdapter$1;
.super Ljava/lang/Object;
.source "AccountsListAdapter.java"

# interfaces
.implements Lcom/android/contacts/model/AccountTypeManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/model/AccountWithDataSet;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/util/AccountsListAdapter;

.field final synthetic val$accountListFilter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;


# direct methods
.method constructor <init>(Lcom/android/contacts/util/AccountsListAdapter;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/contacts/util/AccountsListAdapter$1;->this$0:Lcom/android/contacts/util/AccountsListAdapter;

    iput-object p2, p0, Lcom/android/contacts/util/AccountsListAdapter$1;->val$accountListFilter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinished()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter$1;->this$0:Lcom/android/contacts/util/AccountsListAdapter;

    iget-object v1, p0, Lcom/android/contacts/util/AccountsListAdapter$1;->this$0:Lcom/android/contacts/util/AccountsListAdapter;

    iget-object v2, p0, Lcom/android/contacts/util/AccountsListAdapter$1;->val$accountListFilter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    # invokes: Lcom/android/contacts/util/AccountsListAdapter;->getAccounts(Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/android/contacts/util/AccountsListAdapter;->access$100(Lcom/android/contacts/util/AccountsListAdapter;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/contacts/util/AccountsListAdapter;->access$002(Lcom/android/contacts/util/AccountsListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 102
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter$1;->this$0:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 103
    return-void
.end method
