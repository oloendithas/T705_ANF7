.class final Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;
.super Ljava/lang/Object;
.source "ContactSelectionActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnContactPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/ContactSelectionActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/ContactSelectionActivity$1;

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    return-void
.end method

.method private launchAddToContactDialog(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 729
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCreateNewContactAction(Z)V
    .locals 3
    .param p1, "finishActivityonCreateComplete"    # Z

    .prologue
    .line 651
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 653
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

    .line 654
    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-boolean v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mRingtoneMode:Z

    if-eqz v1, :cond_1

    .line 657
    const-string v1, "ringtone_uri"

    const-string v2, "ringtone_uri"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-boolean v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mAttachPhotoMode:Z

    if-eqz v1, :cond_2

    .line 660
    const-string v1, "photo_uri"

    const-string v2, "photo_uri"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    :cond_2
    const-string v1, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 665
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivityAndForwardResult(Landroid/content/Intent;)V

    .line 666
    return-void
.end method

.method public onEditContactAction(Landroid/net/Uri;)V
    .locals 8
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 670
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 671
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v4, "ringtone_uri"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 672
    const-string v4, "ContactSelectionActivity"

    const-string v5, "[Interaction] ringtone_uri"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string v4, "ringtone_uri"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 674
    .local v2, "ringtoneUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-static {v4, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    .line 675
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 676
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "custom_ringtone"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v4}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 678
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const v5, 0x7f0e0056

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 679
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    .line 705
    .end local v2    # "ringtoneUri":Landroid/net/Uri;
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 682
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->launchAddToContactDialog(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 684
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const-class v5, Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 686
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 687
    if-eqz v0, :cond_1

    .line 688
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 692
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v4, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 696
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v1, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 697
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # getter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mIsTutorialMode:Z
    invoke-static {v4}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$400(Lcom/android/contacts/activities/ContactSelectionActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 700
    const-string v4, "tutorial_mode_from_dialer"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 703
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v4, v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivityAndForwardResult(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPickContactAction(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    # getter for: Lcom/android/contacts/activities/ContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$500(Lcom/android/contacts/activities/ContactSelectionActivity;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-static {v0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 715
    :goto_0
    return-void

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 720
    return-void
.end method
