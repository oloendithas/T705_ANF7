.class Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "SamsungAccountValidationCheckActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver$1;->this$1:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver$1;->this$1:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->access$000(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;I)V

    .line 407
    :cond_0
    return-void
.end method
