.class Lcom/android/contacts/activities/ContactDetailActivity$6$1;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactDetailActivity$6;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/ContactDetailActivity$6;

.field final synthetic val$result:Lcom/android/contacts/ContactLoader$Result;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactDetailActivity$6;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$6;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$6;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$6;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    # setter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$002(Lcom/android/contacts/activities/ContactDetailActivity;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    .line 640
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$6;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 641
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$6;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    # setter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$102(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 642
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$6;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$6;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 643
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$6;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$400(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$6;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->setContactData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 644
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$6;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # invokes: Lcom/android/contacts/activities/ContactDetailActivity;->setupTitle()V
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$500(Lcom/android/contacts/activities/ContactDetailActivity;)V

    goto :goto_0
.end method
