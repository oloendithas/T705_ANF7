.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$9;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0

    .prologue
    .line 1562
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$9;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1565
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$9;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1566
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$9;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getIPCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1567
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$9;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1569
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
