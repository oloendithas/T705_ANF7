.class Lcom/android/contacts/activities/ContactDetailActivity$5;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactDetailActivity;->callEdit()V
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
    .line 480
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 483
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$300(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->disableAutoUpdate()V

    .line 485
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->doBoost(Landroid/content/Context;)V

    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/activities/ContactDetailActivity;->access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 489
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

    .line 490
    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    :cond_0
    const-string v1, "finishActivityOnSaveCompleted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 498
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$5;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 499
    return-void
.end method
