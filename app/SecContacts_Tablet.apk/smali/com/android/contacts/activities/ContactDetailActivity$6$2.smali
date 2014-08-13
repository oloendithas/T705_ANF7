.class Lcom/android/contacts/activities/ContactDetailActivity$6$2;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactDetailActivity$6;->onEditRequested(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/ContactDetailActivity$6;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactDetailActivity$6;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$2;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$6;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$2;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$6;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->directorySvcUtils:Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$300(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/util/directoryUtils/DirectoryServiceUtils;->disableAutoUpdate()V

    .line 681
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$2;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$6;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$6;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$6$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 682
    return-void
.end method
