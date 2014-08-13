.class Lcom/android/contacts/activities/ShowOrCreateActivity$2;
.super Ljava/lang/Object;
.source "ShowOrCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ShowOrCreateActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ShowOrCreateActivity;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$2;->this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 304
    packed-switch p2, :pswitch_data_0

    .line 336
    iget-object v2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$2;->this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 340
    :goto_0
    return-void

    .line 306
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 308
    .local v1, "insertIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$2;->this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;

    # getter for: Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/contacts/activities/ShowOrCreateActivity;->access$000(Lcom/android/contacts/activities/ShowOrCreateActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 309
    const-string v2, "finishActivityOnSaveCompleted"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    const-string v2, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.jcontacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$2;->this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;

    invoke-virtual {v2, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 317
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 321
    .end local v1    # "insertIntent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, "createIntent":Landroid/content/Intent;
    const-string v2, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 324
    iget-object v2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$2;->this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;

    # getter for: Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/contacts/activities/ShowOrCreateActivity;->access$000(Lcom/android/contacts/activities/ShowOrCreateActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 325
    const-string v2, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v2, "hidecreatelabel"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.jcontacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    const-string v2, "com.android.jcontacts"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$2;->this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;

    invoke-virtual {v2, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 332
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
