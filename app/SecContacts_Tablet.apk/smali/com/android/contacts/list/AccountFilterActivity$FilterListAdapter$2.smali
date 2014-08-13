.class Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter$2;
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


# direct methods
.method constructor <init>(Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter$2;->this$0:Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter$2;->this$0:Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;

    # getter for: Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->access$500(Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter$2;->this$0:Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;

    # getter for: Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->access$500(Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/AccountFilterActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 322
    return-void
.end method
