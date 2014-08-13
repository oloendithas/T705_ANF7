.class Lcom/android/contacts/activities/DialtactsActivity$18;
.super Landroid/content/BroadcastReceiver;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 3947
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$18;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3949
    const/4 v2, 0x3

    .line 3950
    .local v2, "selectedTabPos":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3951
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.android.contacts.activities.PeopleActivity.All"

    if-ne v0, v3, :cond_1

    .line 3952
    const/4 v2, 0x3

    .line 3956
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$18;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const-class v4, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3957
    .local v1, "intents":Landroid/content/Intent;
    const-string v3, "from_phone_app"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3958
    const-string v3, "selected_tab_pos"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3959
    const/high16 v3, 0x24000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3960
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$18;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3961
    return-void

    .line 3953
    .end local v1    # "intents":Landroid/content/Intent;
    :cond_1
    const-string v3, "com.android.contacts.activities.PeopleActivity.Favourites"

    if-ne v0, v3, :cond_0

    .line 3954
    const/4 v2, 0x2

    goto :goto_0
.end method
