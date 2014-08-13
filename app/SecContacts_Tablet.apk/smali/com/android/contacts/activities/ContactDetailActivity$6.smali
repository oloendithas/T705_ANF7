.class Lcom/android/contacts/activities/ContactDetailActivity$6;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactDetailActivity;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->finish()V

    .line 622
    return-void
.end method

.method public onDeleteRequested(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .line 703
    return-void
.end method

.method public onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 2
    .param p1, "result"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 626
    if-nez p1, :cond_0

    .line 647
    :goto_0
    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$600(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/activities/ContactDetailActivity$6$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/activities/ContactDetailActivity$6$1;-><init>(Lcom/android/contacts/activities/ContactDetailActivity$6;Lcom/android/contacts/ContactLoader$Result;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onEditRequested(Landroid/net/Uri;)V
    .locals 8
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 652
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->doBoost(Landroid/content/Context;)V

    .line 654
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 656
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    :cond_0
    const-string v1, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 667
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAABYP"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 668
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # setter for: Lcom/android/contacts/activities/ContactDetailActivity;->mAlert:Landroid/app/AlertDialog;
    invoke-static {v1, v7}, Lcom/android/contacts/activities/ContactDetailActivity;->access$702(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 669
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$800(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$300(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->isValidDirectoryEntry()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$300(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->isAutoUpdateEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;
    invoke-static {v3}, Lcom/android/contacts/activities/ContactDetailActivity;->access$800(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e03ed

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    const v4, 0x7f0e03ea

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e03ee

    new-instance v4, Lcom/android/contacts/activities/ContactDetailActivity$6$2;

    invoke-direct {v4, p0, v0}, Lcom/android/contacts/activities/ContactDetailActivity$6$2;-><init>(Lcom/android/contacts/activities/ContactDetailActivity$6;Landroid/content/Intent;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    # setter for: Lcom/android/contacts/activities/ContactDetailActivity;->mAlert:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/contacts/activities/ContactDetailActivity;->access$702(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 688
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mAlert:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$700(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_2

    .line 689
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v1, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 698
    :goto_0
    return-void

    .line 692
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mAlert:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$700(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 696
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v1, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
