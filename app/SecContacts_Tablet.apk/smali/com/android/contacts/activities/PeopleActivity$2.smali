.class Lcom/android/contacts/activities/PeopleActivity$2;
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
    .line 756
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$2;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 759
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$2;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/4 v2, 0x1

    # setter for: Lcom/android/contacts/activities/PeopleActivity;->mIsLockScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/contacts/activities/PeopleActivity;->access$902(Lcom/android/contacts/activities/PeopleActivity;Z)Z

    .line 763
    :cond_0
    return-void
.end method
