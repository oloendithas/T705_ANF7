.class Lcom/android/contacts/activities/ContactDetailActivity$3;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactDetailActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 273
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/samsung/android/bezelinteraction/BezelEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/samsung/android/bezelinteraction/BezelEvent;

    .prologue
    .line 276
    iget v3, p1, Lcom/samsung/android/bezelinteraction/BezelEvent;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 277
    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v3}, Lcom/android/contacts/activities/ContactDetailActivity;->access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v3

    if-nez v3, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v3}, Lcom/android/contacts/activities/ContactDetailActivity;->access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getLookupKey()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "lookupKey":Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 281
    .local v2, "shareUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v3}, Lcom/android/contacts/activities/ContactDetailActivity;->access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/contacts/util/ContactLoaderUtils;->getPreAuthorizedUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 285
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.sconnect.START"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 288
    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
