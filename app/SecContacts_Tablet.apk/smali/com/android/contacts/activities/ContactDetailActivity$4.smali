.class Lcom/android/contacts/activities/ContactDetailActivity$4;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactDetailActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactDetailActivity;

.field final synthetic val$starredView:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$4;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactDetailActivity$4;->val$starredView:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$4;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$4;->val$starredView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->toggle()V

    .line 391
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$4;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    const/4 v2, 0x1

    # setter for: Lcom/android/contacts/activities/ContactDetailActivity;->mIsStarButtonClicked:Z
    invoke-static {v1, v2}, Lcom/android/contacts/activities/ContactDetailActivity;->access$202(Lcom/android/contacts/activities/ContactDetailActivity;Z)Z

    .line 393
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$4;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$4;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/activities/ContactDetailActivity;->access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity$4;->val$starredView:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 395
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$4;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 397
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
