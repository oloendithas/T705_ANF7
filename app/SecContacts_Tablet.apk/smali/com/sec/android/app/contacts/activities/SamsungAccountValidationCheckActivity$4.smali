.class Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$4;
.super Ljava/lang/Object;
.source "SamsungAccountValidationCheckActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->showSetContactSyncPopup(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

.field final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$4;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$4;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 192
    const-string v0, "SamsungAccountValidationCheckActivity"

    const-string v1, "setSyncAutomatically"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$4;->val$account:Landroid/accounts/Account;

    const-string v1, "com.android.contacts"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$4;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    const/4 v1, -0x1

    # invokes: Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->access$000(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;I)V

    .line 203
    return-void
.end method
