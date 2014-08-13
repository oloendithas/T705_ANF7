.class Lcom/android/contacts/activities/PeopleActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PeopleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$1;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 625
    const-string v0, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const-string v0, "PeopleActivity"

    const-string v1, "Launcher mode is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$1;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$600(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$1;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsKNOXMode:Z
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$700(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$1;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->saveLastTabPreference(I)V

    .line 631
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$1;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 633
    :cond_0
    return-void

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$1;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->saveLastTabPreference(I)V

    goto :goto_0
.end method
