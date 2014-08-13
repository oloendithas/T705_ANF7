.class Lcom/android/contacts/activities/PeopleActivity$10;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PeopleActivity;->requestDownloadingResource(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 6050
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$10;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iput-object p2, p0, Lcom/android/contacts/activities/PeopleActivity$10;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v4, 0x0

    .line 6053
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$10;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # setter for: Lcom/android/contacts/activities/PeopleActivity;->mHelpHubDownloadDialogShowing:Z
    invoke-static {v2, v4}, Lcom/android/contacts/activities/PeopleActivity;->access$5302(Lcom/android/contacts/activities/PeopleActivity;Z)Z

    .line 6055
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 6056
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.app.samsungapps"

    const-string v3, "com.sec.android.app.samsungapps.Main"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6058
    const-string v2, "directcall"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6059
    const-string v2, "callerType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6060
    const-string v2, "GUID"

    const-string v3, "com.samsung.helpplugin"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6061
    const v2, 0x14000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6064
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$10;->val$c:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6068
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 6065
    :catch_0
    move-exception v0

    .line 6066
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$10;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const v3, 0x7f0e010f

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
