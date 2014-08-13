.class Lcom/android/contacts/activities/NamecardListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "NamecardListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/NamecardListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/NamecardListActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/NamecardListActivity;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/contacts/activities/NamecardListActivity$1;->this$0:Lcom/android/contacts/activities/NamecardListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 201
    const-string v0, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardListActivity$1;->this$0:Lcom/android/contacts/activities/NamecardListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 204
    :cond_0
    return-void
.end method
