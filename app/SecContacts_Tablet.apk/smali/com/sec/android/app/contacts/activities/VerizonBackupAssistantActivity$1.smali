.class final Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "VerizonBackupAssistantActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 44
    .local v0, "activity":Landroid/app/Activity;
    :try_start_0
    # getter for: Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {}, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;->access$000()Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    const-string v3, "IS_BUA_PROVISIONED"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/contacts/activities/VerizonBackupAssistantActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v2, "startIntent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 55
    .end local v2    # "startIntent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
