.class Lcom/android/contacts/activities/DialtactsActivity$3;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$3;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 863
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$3;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const-class v3, Lcom/android/contacts/list/AccountFilterActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 865
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$3;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;
    invoke-static {v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$2200(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 866
    .local v0, "filter":Lcom/android/contacts/list/ContactListFilter;
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$3;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const/16 v3, 0x2711

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 867
    const/4 v2, 0x1

    return v2
.end method
